import 'package:equatable/equatable.dart';

class ChangeThemeEntity extends Equatable {
  final bool? theme;

  const ChangeThemeEntity(this.theme);

  @override
  List<Object?> get props => [theme];
}
