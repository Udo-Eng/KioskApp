import "package:flutter/material.dart";
import "../constants/routes.dart";
import '../screens/home.dart';
import "../widgets/configuration/configuration_layout.dart";
import '../screens/configuration/configuration.dart';
import '../screens/configuration/configuration_success.dart';

Map<String, WidgetBuilder> routes = {
  HOME_SCREEN_ROUTE: (context) => HomePage(title: "Home Page"),
  CONFIGURATION_SCREEN_ROUTE: (context) => ConfigurationLayout(
        childWidget: ConfigurationScreen(),
      ),
  CONFIGURATION_SCREEN_SUCCESS_ROUTE: (context) =>
      ConfigurationLayout(childWidget: ConfigurationSuccessScreen()),
};
