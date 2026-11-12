import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:campus_pulse/core/errors/failure.dart';

import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/features/ticketing/data/providers/ticketing_data_providers.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_option.dart';
import 'package:campus_pulse/features/ticketing/domain/checkout_quote.dart';
import 'package:campus_pulse/features/ticketing/domain/group_hold_reservation.dart';
import 'package:campus_pulse/features/ticketing/domain/ticket.dart';
import 'package:campus_pulse/features/ticketing/domain/usecases/export_wallet_pass_use_case.dart';
import 'package:campus_pulse/features/ticketing/domain/usecases/get_my_tickets_use_case.dart';
import 'package:campus_pulse/features/ticketing/domain/usecases/hold_group_spots_use_case.dart';
import 'package:campus_pulse/features/ticketing/domain/usecases/purchase_ticket_use_case.dart';
import 'package:campus_pulse/features/ticketing/domain/usecases/release_hold_use_case.dart';
import 'package:campus_pulse/features/ticketing/presentation/models/checkout_state.dart';
import 'package:campus_pulse/features/ticketing/presentation/models/group_hold_state.dart';

part 'ticketing_providers.g.dart';

@Riverpod(keepAlive: true)
PurchaseTicketUseCase purchaseTicketUseCase(Ref ref) {
  return PurchaseTicketUseCase(
    repository: ref.watch(ticketingRepositoryProvider),
    paymentGateway: ref.watch(paymentGatewayProvider),
  );
}

@Riverpod(keepAlive: true)
HoldGroupSpotsUseCase holdGroupSpotsUseCase(Ref ref) =>
    HoldGroupSpotsUseCase(ref.watch(ticketingRepositoryProvider));

@Riverpod(keepAlive: true)
ReleaseHoldUseCase releaseHoldUseCase(Ref ref) =>
    ReleaseHoldUseCase(ref.watch(ticketingRepositoryProvider));

@Riverpod(keepAlive: true)
GetMyTicketsUseCase getMyTicketsUseCase(Ref ref) =>
    GetMyTicketsUseCase(ref.watch(ticketingRepositoryProvider));

@Riverpod(keepAlive: true)
ExportAppleWalletPassUseCase exportAppleWalletPassUseCase(Ref ref) =>
    ExportAppleWalletPassUseCase(ref.watch(ticketingRepositoryProvider));

@Riverpod(keepAlive: true)
GetGoogleWalletUrlUseCase getGoogleWalletUrlUseCase(Ref ref) =>
    GetGoogleWalletUrlUseCase(ref.watch(ticketingRepositoryProvider));

@Riverpod(keepAlive: true)
class MyTicketsController extends _$MyTicketsController {
  @override
  Future<List<Ticket>> build() => _fetch();

  Future<void> refresh() async {
    state = const AsyncLoading<List<Ticket>>();
    state = await AsyncValue.guard(_fetch);
  }

  Future<List<Ticket>> _fetch() async {
    final result = await ref.read(getMyTicketsUseCaseProvider)();
    return result.fold(
      onSuccess: (List<Ticket> tickets) => tickets,
      onFailure: (failure) => throw FailureException(failure),
    );
  }
}

@Riverpod(keepAlive: true)
class CheckoutController extends _$CheckoutController {
  late String _eventId;

  @override
  CheckoutState build(String eventId) {
    _eventId = eventId;
    return const CheckoutState();
  }

  Future<CheckoutQuote?> loadQuote({
    required CheckoutOption option,
    String? referrerId,
  }) async {
    state = state.copyWith(
      isQuoting: true,
      quote: null,
      ticket: null,
      errorMessage: null,
      seats: option.seats,
    );
    final result = await ref.read(purchaseTicketUseCaseProvider).createQuote(
      PurchaseTicketParams(
        eventId: _eventId,
        option: option,
        referrerId: referrerId,
      ),
    );
    return result.fold(
      onSuccess: (CheckoutQuote quote) {
        state = state.copyWith(isQuoting: false, quote: quote);
        return quote;
      },
      onFailure: (Failure failure) {
        state = state.copyWith(
          isQuoting: false,
          errorMessage: failure.userMessage,
        );
        return null;
      },
    );
  }

  Future<Ticket?> pay() async {
    final CheckoutQuote? quote = state.quote;
    if (quote == null) {
      state = state.copyWith(errorMessage: 'Sélectionne d’abord une offre.');
      return null;
    }
    state = state.copyWith(isPaying: true, errorMessage: null);
    final result = await ref.read(purchaseTicketUseCaseProvider).payQuote(quote);
    return result.fold(
      onSuccess: (Ticket ticket) {
        state = state.copyWith(isPaying: false, ticket: ticket);
        ref.invalidate(myTicketsControllerProvider);
        return ticket;
      },
      onFailure: (Failure failure) {
        state = state.copyWith(
          isPaying: false,
          errorMessage: failure.userMessage,
        );
        return null;
      },
    );
  }

  void reset() {
    state = const CheckoutState();
  }
}

@Riverpod(keepAlive: true)
class GroupHoldController extends _$GroupHoldController {
  late String _eventId;

  @override
  GroupHoldState build(String eventId) {
    _eventId = eventId;
    return const GroupHoldState();
  }

  void setSeats(int seats) {
    state = state.copyWith(seats: seats);
  }

  Future<GroupHoldReservation?> start() async {
    state = state.copyWith(isSubmitting: true, errorMessage: null);
    final result = await ref.read(holdGroupSpotsUseCaseProvider)(
      eventId: _eventId,
      seats: state.seats,
    );
    return result.fold(
      onSuccess: (GroupHoldReservation reservation) {
        state = state.copyWith(
          isSubmitting: false,
          reservation: reservation,
        );
        return reservation;
      },
      onFailure: (Failure failure) {
        state = state.copyWith(
          isSubmitting: false,
          errorMessage: failure.userMessage,
        );
        return null;
      },
    );
  }

  Future<void> cancel() async {
    final GroupHoldReservation? reservation = state.reservation;
    if (reservation == null) {
      return;
    }
    await ref.read(releaseHoldUseCaseProvider)(reservation.id);
    state = const GroupHoldState();
  }
}
