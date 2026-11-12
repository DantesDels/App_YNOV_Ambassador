/// Backend contract. Amounts are always computed server-side.
abstract final class ApiEndpoints {
  static const String requestOtp = '/auth/otp/request';
  static const String verifyOtp = '/auth/otp/verify';
  static const String sso = '/auth/sso';
  static const String refreshToken = '/auth/refresh';
  static const String logout = '/auth/logout';
  static const String me = '/auth/me';

  static const String events = '/events';
  static String event(String eventId) => '/events/$eventId';
  static String eventCapacity(String eventId) => '/events/$eventId/capacity';
  static String eventAttendance(String eventId) => '/events/$eventId/attendance';
  static String eventInvite(String eventId) => '/events/$eventId/invite';

  static const String friends = '/friends';
  static const String friendsByQr = '/friends/qr';
  static String notifyFriends(String eventId) => '/events/$eventId/notify-friends';
  static const String activityStream = '/social/activity';

  static const String checkoutQuote = '/ticketing/quotes';
  static const String confirmPurchase = '/ticketing/purchases/confirm';
  static const String myTickets = '/ticketing/tickets';
  static const String groupHolds = '/ticketing/holds';
  static String releaseHold(String holdId) => '/ticketing/holds/$holdId';
  static String walletPass(String ticketId) => '/ticketing/tickets/$ticketId/wallet';
  static String googleWalletSaveUrl(String ticketId) =>
      '/ticketing/tickets/$ticketId/google-wallet';

  static const String profile = '/profile';
  static const String memberships = '/profile/memberships';
  static String membership(String organizer) => '/profile/memberships/$organizer';
  static const String notificationSettings = '/profile/notifications';
  static const String discreetMode = '/profile/discreet-mode';
}
