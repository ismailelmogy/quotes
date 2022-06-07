import 'package:quotes/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:quotes/core/usecases/usecase.dart';
import 'package:quotes/features/splash/domain/repositories/lang_repository.dart';

class ChangeLangUseCase implements UseCase<bool, String> {
  final LangRepository langRepository;

  ChangeLangUseCase({required this.langRepository});

  @override
  Future<Either<Failure, bool>> call(String langCode) async =>
      await langRepository.changeLang(langCode: langCode);
}
