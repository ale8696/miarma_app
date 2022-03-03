import 'dart:convert';

import 'package:http/http.dart';
import 'package:miarma_app/model/register/register_response.dart';
import 'package:miarma_app/model/register/register_dto.dart';
import 'package:miarma_app/repository/register_repository/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final Client _client = Client();

  @override
  Future<RegisterResponse> register(RegisterDto registerDto) async {

    Map<String, String> headers = {
      'Content-Type': 'application/json'
    };

    final response = await Future.delayed(const Duration(milliseconds: 4000), () {
      return _client.post(Uri.parse('https:10.0.2.2:8080/auth/register/usuario'),
        headers: headers,
        body: jsonEncode(registerDto.toJson()));
    });
    if (response.statusCode == 200) {
      return RegisterResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Fail to register');
    }

  }
  
}