import 'package:flutter/material.dart';
import '../constants/routes.dart';
import '../widgets/home/home_layout.dart';
import '../screens/home/home.dart';
import '../widgets/configuration/configuration_layout.dart';
import '../screens/configuration/configuration.dart';
import '../screens/configuration/configuration_success.dart';
import '../widgets/wallet/wallet_layout.dart';
import '../screens/wallet/wallet.dart';

Map<String, WidgetBuilder> routes = {
  HOME_SCREEN_ROUTE: (context) => HomeLayout(childWidget: HomeScreen()),
  CONFIGURATION_SCREEN_ROUTE: (context) => ConfigurationLayout(
        childWidget: ConfigurationScreen(),
      ),
  CONFIGURATION_SCREEN_SUCCESS_ROUTE: (context) =>
      ConfigurationLayout(childWidget: ConfigurationSuccessScreen()),
  WALLET_SCREEN_ROUTE: (context) => WalletLayout(
        childWidget: WalletScreen(),
      ),
};
