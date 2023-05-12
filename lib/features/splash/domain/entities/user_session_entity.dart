import 'package:equatable/equatable.dart';

class UserSessionEntity extends Equatable {
  final bool userSessionIsActive;

  const UserSessionEntity({required this.userSessionIsActive});

  @override
  List<Object?> get props => [userSessionIsActive];
}
