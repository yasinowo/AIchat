class ChatMessage {
  final int? id; // برای ذخیره ID از دیتابیس
  final String message; // متن پیام
  final bool isUser; // آیا پیام برای کاربر است یا AI
  final String timestamp; // زمان ارسال پیام

  ChatMessage({
    this.id,
    required this.message,
    required this.isUser,
    required this.timestamp,
  });

  // تبدیل به Map برای ذخیره در دیتابیس

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'message': message,
      'isUser': isUser ? 1 : 0,
      'timestamp': timestamp,
    };
  }

  // تبدیل Map به مدل
  factory ChatMessage.fromMap(Map<String, dynamic> map) {
    return ChatMessage(
      id: map['id'],
      message: map['message'],
      isUser: map['isUser'] == 1,
      timestamp: map['timestamp'],
    );
  }
}
