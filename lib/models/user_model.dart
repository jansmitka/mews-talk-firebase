import 'package:equatable/equatable.dart';

class User extends Equatable {
  final String userId;
  final String firstname;
  final String lastname;
  final String username;

  const User({
    required this.userId,
    required this.firstname,
    required this.lastname,
    required this.username,
  });

  @override
  List<Object?> get props => [userId, firstname, lastname, username];

  static User loggedUser = const User(
    userId: 'guA0Gvn11xftFh7fTxJzfK1z7NA3',
    firstname: 'John',
    lastname: 'Doe',
    username: 'john_doe',
  );
}
