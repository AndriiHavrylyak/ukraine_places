import 'package:equatable/equatable.dart';

class MasterSessionEntity extends Equatable {
  final bool masterSessionIsActive;

  const MasterSessionEntity({required this.masterSessionIsActive});

  @override
  List<Object?> get props => [masterSessionIsActive];
}
