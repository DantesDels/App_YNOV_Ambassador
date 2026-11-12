import 'package:campus_pulse/features/social/domain/activity_item.dart';
import 'package:campus_pulse/features/social/domain/cascade_invite.dart';
import 'package:campus_pulse/features/social/domain/friend.dart';
import 'package:campus_pulse/features/social/data/models/activity_item_dto.dart';
import 'package:campus_pulse/features/social/data/models/cascade_invite_dto.dart';
import 'package:campus_pulse/features/social/data/models/friend_dto.dart';

extension FriendDtoMapper on FriendDto {
  Friend toDomain() {
    return Friend(
      id: id,
      firstName: firstName,
      lastName: lastName,
      avatarUrl: avatarUrl,
      schoolName: schoolName,
      lastActiveAt: lastActiveAt,
      isOnline: isOnline,
      sharedEvents: sharedEvents,
    );
  }
}

extension ActivityItemDtoMapper on ActivityItemDto {
  ActivityItem toDomain() {
    return ActivityItem(
      id: id,
      type: switch (type) {
        'friend_purchased' => ActivityType.friendPurchased,
        'squad_created' => ActivityType.squadCreated,
        'friend_joined' => ActivityType.friendJoined,
        'event_trending' => ActivityType.eventTrending,
        _ => ActivityType.friendGoing,
      },
      actorName: actorName,
      eventId: eventId,
      eventTitle: eventTitle,
      createdAt: createdAt,
      actorAvatarUrl: actorAvatarUrl,
      friendCount: friendCount,
      isFriendActivity: isFriendActivity,
    );
  }
}

extension CascadeInviteDtoMapper on CascadeInviteDto {
  CascadeInvite toDomain() {
    return CascadeInvite(
      eventId: eventId,
      eventTitle: eventTitle,
      referrerId: referrerId,
      shareUrl: shareUrl,
      shareMessage: shareMessage,
      expiresAt: expiresAt,
      squadSeats: squadSeats,
      invitedCount: invitedCount,
      squadDiscountUnlocked: squadDiscountUnlocked,
      discountLabel: discountLabel,
    );
  }
}
