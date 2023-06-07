import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'package:provider/provider.dart';
import './providers/hospital_list_provider.dart';
import './constants/routes.dart';
import './providers/configuration_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => HospitalListProvider()),
        ChangeNotifierProvider(create: (_) => ConfigurationProvider()),
      ],
      child: MaterialApp(
        title: 'Health Station Kiosk App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: CONFIGURATION_SCREEN_ROUTE,
        routes: routes,
      ),
    );
  }
}
