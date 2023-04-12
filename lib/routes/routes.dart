import 'package:flutter/material.dart';
import '../constants/routes.dart';
import '../widgets/home/home_layout.dart';
import '../screens/home/home.dart';
import '../widgets/configuration/configuration_layout.dart';
import '../screens/configuration/configuration.dart';
import '../screens/configuration/configuration_success.dart';
import '../widgets/wallet/wallet_layout.dart';
import '../screens/wallet/wallet.dart';
import '../screens/appointment/appointment.dart';
import '../widgets/appointment/appointment_layout.dart';

Map<String, WidgetBuilder> routes = {
  HOME_SCREEN_ROUTE: (context) => HomeLayout(childWidget: const HomeScreen()),
  CONFIGURATION_SCREEN_ROUTE: (context) => ConfigurationLayout(
        childWidget: const ConfigurationScreen(),
      ),
  CONFIGURATION_SCREEN_SUCCESS_ROUTE: (context) =>
      ConfigurationLayout(childWidget: const ConfigurationSuccessScreen()),
  WALLET_SCREEN_ROUTE: (context) => WalletLayout(
        childWidget: const WalletScreen(),
      ),
  APPOINTMENT_SCREEN_ROUTE: (context) =>
      AppointmentLayout(childWidget: const AppointmentScreen()),
};
