import '../../data/models/register_request_model.dart';
import '../entities/register_entity.dart';

abstract class RegisterRepository {
  Future<RegisterEntity> register(RegisterRequestModel request);
}
