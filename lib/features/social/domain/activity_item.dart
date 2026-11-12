import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_item.freezed.dart';

enum ActivityType {
  friendGoing,
  friendPurchased,
  squadCreated,
  friendJoined,
  eventTrending,
}

/// One entry of the live social ticker ("Léa et 3 potes vont à…").
@freezed
abstract class ActivityItem with _$ActivityItem {
  const factory ActivityItem({
    required String id,
    required ActivityType type,
    required String actorName,
    required String eventId,
    required String eventTitle,
    required DateTime createdAt,
    String? actorAvatarUrl,
    @Default(1) int friendCount,
    @Default(false) bool isFriendActivity,
  }) = _ActivityItem;

  const ActivityItem._();

  String get headline {
    final String actor = actorName.trim().isEmpty ? 'Un pote' : actorName;
    return switch (type) {
      ActivityType.friendGoing => '$actor va à $eventTitle',
      ActivityType.friendPurchased => '$actor vient de prendre sa place pour $eventTitle',
      ActivityType.squadCreated => '$actor a formé une escouade pour $eventTitle',
      ActivityType.friendJoined => '$actor a rejoint CampusPulse',
      ActivityType.eventTrending => '$eventTitle cartonne en ce moment',
    };
  }

  String get socialProof {
    if (friendCount <= 1) {
      return 'Activité récente';
    }
    return '$friendCount potes sur cet événement';
  }
}
