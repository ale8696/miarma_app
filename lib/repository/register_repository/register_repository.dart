

import 'package:image_picker/image_picker.dart';
import 'package:miarma_app/model/register/register_dto.dart';
import 'package:miarma_app/model/register/register_response.dart';

abstract class RegisterRepository {
  Future<RegisterResponse> register(RegisterDto registerDto, XFile file);
}