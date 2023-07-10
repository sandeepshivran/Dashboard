
class UserChatDetailsModel {
  final int userId;
  final bool isOwnMessage;
  final String message;
  final DateTime time;

  const UserChatDetailsModel({
    required this.userId,
    required this.isOwnMessage,
    required this.message,
    required this.time,
  });
}
