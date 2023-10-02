import 'dart:convert';

import 'package:ford_ranger/models/default_response_dto.dart';
import 'package:ford_ranger/models/user_dto.dart';
import 'package:http/http.dart' as http;

class OnboardingService {
  Future<dynamic> createUser(dynamic user) async {
    var url =
        Uri.https('rm86750-api-ford.azurewebsites.net', '/onboarding/create');
    var res = await http.post(url, body: user);
    var body = json.decode(res.body);
    var data = UserDto.fromMap(body['data']);
    return DefaultResponseDto<UserDto>(
        success: body['success'], message: body['message'], data: data);
  }

  Future<dynamic> updateUser(dynamic id, dynamic user) async {
    var url = Uri.https('rm86750-api-ford.azurewebsites.net',
        '/onboarding/update/' + id.toString());
    user = json.encode(user);
    var res = await http
        .put(url, body: user, headers: {"Content-Type": "application/json"});
    var body = json.decode(res.body);
    var data = UserDto.fromMap(body['data']);
    return DefaultResponseDto<UserDto>(
        success: body['success'], message: body['message'], data: data);
  }
}
