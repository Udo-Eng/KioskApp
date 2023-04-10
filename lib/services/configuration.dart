import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:kiosk_desktop_app/models/hospital_configuration_model.dart';
import 'package:kiosk_desktop_app/models/hospital_list_model.dart';
import "../configs/app_config.dart";

endpoint(status, data) {
  return {
    "status": status,
    "data": data,
  };
}

class ConfigurationApiService {
  static Future<List<HospitalListModel>> fetchHospitals() async {
    final response =
        await http.get(Uri.parse('$API_BASE_URL/Hospital?application=HmisPay'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      List<HospitalListModel> dropdownData = [];
      for (var item in jsonData) {
        dropdownData.add(HospitalListModel(
            ID: item['Id'], Name: item['Name'], Code: item['Code']));
      }
      return dropdownData;
    } else {
      throw Exception('Failed to load dropdown data');
    }
  }

  // static Future<HospitalConfigurationModel> fetchHospitalConfiguration(
  //     String hospitalId) async {
  //   final response = await http.get(
  //       Uri.parse('$API_BASE_URL/Hospital/$hospitalId?application=HmisPay'));
  //   if (response.statusCode == 200) {
  //     final jsonData = json.decode(response.body);
  //     return jsonData;
  //   } else {
  //     throw Exception('Failed to load dropdown data');
  //   }
  // }
  static Future<http.Response> fetchHospitalConfiguration(String hospitalId) async {
    final response = await http.get(
        Uri.parse('$API_BASE_URL/Hospital/$hospitalId?application=HmisPay'));
    return response;
  }
}
