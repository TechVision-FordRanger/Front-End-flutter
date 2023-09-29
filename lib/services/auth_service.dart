import 'dart:convert';

import 'package:ford_ranger/models/default_response_dto.dart';
import 'package:ford_ranger/models/user_dto.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<dynamic> logIn(dynamic authDto) async {
    var url =
        Uri.https('rm86750-api-ford.azurewebsites.net', '/auth');
    var res = await http.post(url, body: authDto);
    var body = json.decode(res.body);
    var data = null;
    if(body['success']) {
      data = UserDto.fromMap(body['data']);
    }
    return DefaultResponseDto<UserDto>(
        success: body['success'], message: body['message'], data: data);
  }
}
