import 'package:dartz/dartz.dart';
import 'package:flutter_application_1/core/error/failures.dart';
import 'package:flutter_application_1/core/usecases/usecase.dart';
import 'package:flutter_application_1/feature/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_application_1/feature/number_trivia/domain/repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UsaCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>?> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
