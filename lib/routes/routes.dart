import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/constants/routes.dart';
import 'package:kiosk_desktop_app/widgets/home/home_layout.dart';
import 'package:kiosk_desktop_app/screens/home/home.dart';
import 'package:kiosk_desktop_app/widgets/configuration/configuration_layout.dart';
import 'package:kiosk_desktop_app/screens/configuration/configuration.dart';
import 'package:kiosk_desktop_app/screens/configuration/configuration_success.dart';
import 'package:kiosk_desktop_app/widgets/wallet/wallet_layout.dart';
import 'package:kiosk_desktop_app/screens/wallet/wallet.dart';
import 'package:kiosk_desktop_app/widgets/payment/invoice/invoice_layout.dart';
import 'package:kiosk_desktop_app/screens/payments/invoice/invoice.dart';
import 'package:kiosk_desktop_app/screens/payments/retrieve_bills/retrieve_bills.dart';
import 'package:kiosk_desktop_app/screens/payments/invoice/invoice_details.dart';
import 'package:kiosk_desktop_app/screens/payments/retrieve_bills/retrieve_bills_outstanding.dart';
import 'package:kiosk_desktop_app/screens/payments/retrieve_bills/retrieve_bills_paid.dart';
import 'package:kiosk_desktop_app/screens/payments/retrieve_bills/retrieve_bills_all.dart';
import './navigation_handlers.dart';

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
  PAYMENT_INVOICE: (context) {
    return InvoiceLayout(
      childWidget: const InvoiceScreen(),
      title: "Payment",
      navText: "Home",
      onBackButtonPress: () => navigateToRoute(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsScreen(),
      title: "Payment",
      navText: "Home",
      onBackButtonPress: () => navigateToRoute(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_INVOICE_DETAILS: (context) {
    return InvoiceLayout(
      childWidget: const InvoiceDetails(),
      title: "Patient Invoice",
      navText: "Home",
      onBackButtonPress: () => navigateToRoute(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS_OUTSTANDING: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsOutStandingScreen(),
      title: "Retrieve Bills",
      navText: "Home",
      onBackButtonPress: () => navigateToRoute(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS_ALL: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsAllScreen(),
      title: "Retrieve Bills",
      navText: "Home",
      onBackButtonPress: () => navigateToRoute(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS_PAID: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsPaidScreen(),
      title: "Retrieve Bills",
      navText: "Home",
      onBackButtonPress: () => navigateToRoute(context, HOME_SCREEN_ROUTE),
    );
  },
};
