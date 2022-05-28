import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/quote.dart';

abstract class QuoteRepository {
  Future<Either<Failure, Quote>> getRandomQuote();
}
