import 'dart:convert';
import 'package:http/http.dart';
import "../configs/app_config.dart";

Future<dynamic> fetchHospitals() async {
  final response =
      await get(Uri.parse('$API_BASE_URL/Hospital?application=HmisPay'));
  print(response.statusCode);
  if (response.statusCode == 200) {
    return json.decode(response.body);
  } else {
    throw Exception('failed to load data');
  }
}
