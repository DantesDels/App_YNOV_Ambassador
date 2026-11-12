import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:campus_pulse/core/errors/failure.dart';

import 'package:campus_pulse/core/errors/app_exception.dart';
import 'package:campus_pulse/core/errors/result.dart';
import 'package:campus_pulse/features/events/domain/event.dart';
import 'package:campus_pulse/features/events/presentation/providers/event_providers.dart';
import 'package:campus_pulse/features/social/data/providers/social_data_providers.dart';
import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/domain/usecases/add_friend_by_qr_use_case.dart';
import 'package:campus_pulse/features/social/domain/usecases/create_cascade_invite_use_case.dart';
import 'package:campus_pulse/features/social/domain/usecases/get_friends_use_case.dart';
import 'package:campus_pulse/features/social/domain/usecases/notify_friends_use_case.dart';
import 'package:campus_pulse/features/social/domain/usecases/share_event_invite_use_case.dart';
import 'package:campus_pulse/features/social/domain/usecases/watch_activity_use_case.dart';

part 'social_providers.g.dart';

@Riverpod(keepAlive: true)
GetFriendsUseCase getFriendsUseCase(Ref ref) =>
    GetFriendsUseCase(ref.watch(socialRepositoryProvider));

@Riverpod(keepAlive: true)
AddFriendByQrUseCase addFriendByQrUseCase(Ref ref) =>
    AddFriendByQrUseCase(ref.watch(socialRepositoryProvider));

@Riverpod(keepAlive: true)
NotifyFriendsUseCase notifyFriendsUseCase(Ref ref) =>
    NotifyFriendsUseCase(ref.watch(socialRepositoryProvider));

@Riverpod(keepAlive: true)
WatchActivityUseCase watchActivityUseCase(Ref ref) =>
    WatchActivityUseCase(ref.watch(socialRepositoryProvider));

@Riverpod(keepAlive: true)
CreateCascadeInviteUseCase createCascadeInviteUseCase(Ref ref) =>
    CreateCascadeInviteUseCase(ref.watch(socialRepositoryProvider));

@Riverpod(keepAlive: true)
ShareEventInviteUseCase shareEventInviteUseCase(Ref ref) =>
    ShareEventInviteUseCase(ref.watch(inviteSharingServiceProvider));

@Riverpod(keepAlive: true)
class FriendsController extends _$FriendsController {
  @override
  Future<List<Friend>> build() => _fetch();

  Future<void> refresh() async {
    state = const AsyncLoading<List<Friend>>();
    state = await AsyncValue.guard(_fetch);
  }

  Future<List<Friend>> _fetch() async {
    final result = await ref.read(getFriendsUseCaseProvider)();
    return result.fold(
      onSuccess: (List<Friend> friends) => friends,
      onFailure: (failure) => throw FailureException(failure),
    );
  }
}

@riverpod
Stream<ActivityItem> activityFeed(Ref ref) {
  return ref.watch(watchActivityUseCaseProvider)();
}

@Riverpod(keepAlive: true)
class AddFriendController extends _$AddFriendController {
  @override
  AsyncValue<Friend?> build() => const AsyncData<Friend?>(null);

  Future<Friend?> scan(String payload) async {
    state = const AsyncLoading<Friend?>();
    final result = await ref.read(addFriendByQrUseCaseProvider)(payload);
    return result.fold(
      onSuccess: (Friend friend) {
        state = AsyncData<Friend?>(friend);
        ref.invalidate(friendsControllerProvider);
        return friend;
      },
      onFailure: (Failure failure) {
        state = AsyncError<Friend?>(FailureException(failure), StackTrace.current);
        return null;
      },
    );
  }

  void reset() {
    state = const AsyncData<Friend?>(null);
  }
}

@Riverpod(keepAlive: true)
class NotifyFriendsController extends _$NotifyFriendsController {
  late String _eventId;

  @override
  AsyncValue<List<Friend>> build(String eventId) {
    _eventId = eventId;
    return const AsyncData<List<Friend>>(<Friend>[]);
  }

  Future<int> notify(Event event) async {
    state = const AsyncLoading<List<Friend>>();
    final result = await ref.read(notifyFriendsUseCaseProvider)(event);
    return result.fold(
      onSuccess: (List<Friend> friends) {
        state = AsyncData<List<Friend>>(friends);
        ref.invalidate(eventDetailProvider(_eventId));
        return friends.length;
      },
      onFailure: (Failure failure) {
        state = AsyncError<List<Friend>>(FailureException(failure), StackTrace.current);
        return 0;
      },
    );
  }
}

@Riverpod(keepAlive: true)
class CascadeInviteController extends _$CascadeInviteController {
  late String _eventId;

  @override
  AsyncValue<CascadeInvite?> build(String eventId) {
    _eventId = eventId;
    return const AsyncData<CascadeInvite?>(null);
  }

  Future<CascadeInvite?> load() async {
    state = const AsyncLoading<CascadeInvite?>();
    final result = await ref.read(createCascadeInviteUseCaseProvider)(_eventId);
    return result.fold(
      onSuccess: (CascadeInvite invite) {
        state = AsyncData<CascadeInvite?>(invite);
        return invite;
      },
      onFailure: (Failure failure) {
        state = AsyncError<CascadeInvite?>(
          FailureException(failure),
          StackTrace.current,
        );
        return null;
      },
    );
  }

  Future<Result<void>> share(CascadeInvite invite) {
    return ref.read(shareEventInviteUseCaseProvider)(invite);
  }
}
