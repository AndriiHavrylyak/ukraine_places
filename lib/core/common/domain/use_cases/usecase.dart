import 'package:equatable/equatable.dart';

import '../entities/result.dart';

abstract class UseCase<Entity, Params> {
  Future<Result<Entity>> call(Params params);
}

class NoParams  {}
