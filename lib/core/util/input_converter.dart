import 'package:dartz/dartz.dart';

import '../config/error/failures.dart';


class InputConverter {
  Either<Failure, int> stringToUnsignedInteger(String string) {
    try {
      final integer = int.parse(string);
      if (integer < 0) throw FormatException();
      return Right(integer);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
  Either<Failure, String> isAddressString(String userId) {
    try {
      final integer = userId.length;
      if (integer < 3) throw FormatException();
      return Right(userId);
    } on FormatException {
      return Left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
