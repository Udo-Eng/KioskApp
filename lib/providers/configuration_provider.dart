import 'package:flutter/material.dart';
import '../models/hospital_configuration_model.dart';

class ConfigurationProvider extends ChangeNotifier {
  HospitalConfigurationModel _hospitalConfiguration =
      HospitalConfigurationModel(
          HospitalId: "", Name: "", AvailableSwitches: []);

  HospitalConfigurationModel get hospitalConfigurationDetails =>
      _hospitalConfiguration;

  void hospitalConfiguration(HospitalConfigurationModel hospitalConfig) {
    _hospitalConfiguration = hospitalConfig;
  }
}
