import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:miarma_app/model/register/register_response.dart';
import 'package:miarma_app/model/register/register_dto.dart';
import 'package:miarma_app/repository/register_repository/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {

  @override
  Future<RegisterResponse> register(RegisterDto registerDto, XFile file) async {

    var uri = Uri.parse('https:10.0.2.2:8080/auth/register/usuario');
    var request = http.MultipartRequest('POST', uri);
    request.files.add(
      await http.MultipartFile.fromPath(
        'file',
        file.path
      )
    );
    var registerJson = jsonEncode(registerDto.toJson());
    request.fields['usuario'] = registerJson;
    var response = await request.send();

    if (response.statusCode == 200) {
      return RegisterResponse.fromJson(json.decode(response.stream.toString()));
    } else {
      throw Exception('Fail to login');
    }

  }

}