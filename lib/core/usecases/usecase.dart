import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../config/error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>?> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

class CaseParams extends Equatable {
  final String eventName;
  final dynamic data;
  const CaseParams({required this.eventName,required this.data});
  @override
  List<Object?> get props => [eventName,data];
}
class CaseResultParams extends Equatable {
  final dynamic data;
  const CaseResultParams({required this.data});
  @override
  List<Object?> get props => [data];
}

