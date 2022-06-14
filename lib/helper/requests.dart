import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String host = 'https://listtodo2030.pythonanywhere.com';
final storage = FlutterSecureStorage();

Future get_new_access_token(String refresh_token) async {
  http.Response request = await http.post(
    Uri.parse('$host/auth/jwt/refresh/'),
    body: json.encode({
      'refresh_token': refresh_token,
    }),
  );
  if (request.statusCode==200){
    Map response = json.decode(request.body);
    storage.write(key: 'access_token', value: response['access']);
    storage.write(key: 'refresh_token', value: response['refresh']);
  }else{
    throw Exception('Failed to refresh token');
  }
}

Future get(Uri url) async {
  final String? access_token = await storage.read(key: 'access_token');
  if (access_token != null) {
    final headers = {'Authorization': 'Bearer $access_token'};
    http.Response request = await http.get(url, headers: headers);
    if (request.statusCode == 401) {
    String? refresh_token = await storage.read(key: 'refresh_token');
    if (refresh_token != null) {
      return get_new_access_token(refresh_token).then((value) => get(url));
    }
    else{
      throw Exception('Failed to refresh token');
    }
    }
    else if (request.statusCode == 200) {
      return json.decode(request.body);
    }
  } else {
    throw Exception('No JWT');
  }

}