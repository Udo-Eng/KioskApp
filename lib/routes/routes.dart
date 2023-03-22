import "package:flutter/material.dart";
import "../constants/routes.dart";
import '../screens/home.dart';
import "../widgets/configuration/configuration_layout.dart";

Map<String, WidgetBuilder> routes = {
  HOME_SCREEN_ROUTE: (context) => HomePage(title: "Home Page"),
  CONFIGURATION_SCREEN_ROUTE: (context) => ConfigurationLayout(),
};
