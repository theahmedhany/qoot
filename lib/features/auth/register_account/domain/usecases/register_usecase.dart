import '../entities/register_entity.dart';
import '../../data/models/register_request_model.dart';
import '../repositories/register_repository.dart';

class RegisterUseCase {
  final RegisterRepository repository;

  RegisterUseCase(this.repository);

  Future<RegisterEntity> call(RegisterRequestModel request) {
    return repository.register(request);
  }
}
