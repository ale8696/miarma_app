import 'dart:convert';
import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:miarma_app/model/register/register_response.dart';
import 'package:miarma_app/model/register/register_dto.dart';
import 'package:miarma_app/repository/register_repository/register_repository.dart';

class RegisterRepositoryImpl extends RegisterRepository {
  final Client _client = Client();

  @override
  Future<RegisterResponse> register(FormData formData) async {

    Map<String, String> headers = {
      'Content-Type': 'multipart/form-data'
    };

    final response = await Future.delayed(const Duration(milliseconds: 4000), () {
      return _client.post(Uri.parse('https:10.0.2.2:8080/auth/register/usuario'),
        headers: headers,
        body: formData);
    });
    if (response.statusCode == 200) {
      return RegisterResponse.fromJson(json.decode(response.body));
    } else {
      throw Exception('Fail to register');
    }

  }
  
}