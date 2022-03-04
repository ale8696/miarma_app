import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:miarma_app/model/register/register_response.dart';
import 'package:miarma_app/model/register/register_dto.dart';
import 'package:miarma_app/repository/register_repository/register_repository.dart';
import 'package:http_parser/http_parser.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  @override
  Future<RegisterResponse> register(RegisterDto registerDto, XFile file) async {
    var registerJson = jsonEncode(registerDto.toJson());
    var uri = Uri.parse('http://10.0.2.2:8080/auth/register/usuario');
    var request = http.MultipartRequest('POST', uri);
    request.files.add(await http.MultipartFile.fromPath('file', file.path,
        filename: file.name));
    request.files.add(http.MultipartFile.fromString('usuario', registerJson,
        contentType: MediaType('application', 'json')));
    var response = await request.send();

    if (response.statusCode == 201) {
      return RegisterResponse.fromJson(json.decode(response.stream.toString()));
    } else {
      throw Exception('Fail to login');
    }
  }
}
