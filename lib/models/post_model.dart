import 'package:equatable/equatable.dart';

class Post extends Equatable {
  final String id;
  final String data;
  final String userId;
  final DateTime date;

  const Post({
    required this.id,
    required this.data,
    required this.userId,
    required this.date,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      data: json['data'],
      userId: json['userId'],
      date: json['date'].toDate(),
    );
  }

  @override
  List<Object?> get props => [id, data, userId, date];
}
