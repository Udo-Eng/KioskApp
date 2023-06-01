import 'package:flutter/material.dart';
import 'routes/routes.dart';
import 'package:provider/provider.dart';
import 'package:kiosk_desktop_app/providers/hospital_list_provider.dart';
import 'package:kiosk_desktop_app/constants/routes.dart';
import 'package:kiosk_desktop_app/providers/configuration_provider.dart';

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
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: CONFIGURATION_SCREEN_ROUTE,
          routes: routes),
    );
  }
}
