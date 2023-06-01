import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/constants/routes.dart';
import 'package:kiosk_desktop_app/widgets/home/home_layout.dart';
import 'package:kiosk_desktop_app/screens/home/home.dart';
import 'package:kiosk_desktop_app/widgets/configuration/configuration_layout.dart';
import 'package:kiosk_desktop_app/screens/configuration/configuration.dart';
import 'package:kiosk_desktop_app/screens/configuration/configuration_success.dart';
import 'package:kiosk_desktop_app/widgets/wallet/wallet_layout.dart';
import 'package:kiosk_desktop_app/screens/wallet/wallet.dart';


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
};
