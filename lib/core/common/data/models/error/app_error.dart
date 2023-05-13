
import 'failure.dart';

class AppError extends Failure {
  final String message;

  AppError(this.message);

  @override
  List<Object?> get props => [message];
}
