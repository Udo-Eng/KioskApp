import 'package:flutter/material.dart';
import '../constants/routes.dart';
import '../widgets/home/home_layout.dart';
import '../screens/home/home.dart';
import '../widgets/configuration/configuration_layout.dart';
import '../screens/configuration/configuration.dart';
import '../screens/configuration/configuration_success.dart';
import '../widgets/wallet/wallet_layout.dart';
import '../screens/wallet/wallet.dart';
import '../widgets/appointment/appointment_layout.dart';
import '../screens/appointment/appointment.dart';
import '../screens/appointment/new_appointment.dart';

import '../widgets/payment/invoice/invoice_layout.dart';
import '../screens/payments/invoice/invoice.dart';
import '../screens/payments/retrieve_bills/retrieve_bills.dart';
import '../screens/payments/invoice/invoice_details.dart';
// import '../screens/payments/modals.dart';
import '../screens/payments/retrieve_bills/retrieve_bills_outstanding.dart';
import '../screens/payments/retrieve_bills/retrieve_bills_paid.dart';
import '../screens/payments/retrieve_bills/retrieve_bills_all.dart';
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
  APPOINTMENT_SCREEN_ROUTE: (context) =>
      AppointmentLayout(childWidget: const AppointmentScreen()),
NEW_APPOINTMENT_SCREEN_ROUTE: (context) => const NewAppointmentScreen(),
  PAYMENT_INVOICE: (context) {
    return InvoiceLayout(
      childWidget: const InvoiceScreen(),
      title: "Payment",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsScreen(),
      title: "Payment",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_INVOICE_DETAILS: (context) {
    return InvoiceLayout(
      childWidget: const InvoiceDetails(),
      title: "Patient Invoice",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
  // MODAL_SCREENS: (context) => const ModalScreen(),
  PAYMENT_RETRIEVE_BILLS_OUTSTANDING: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsOutStandingScreen(),
      title: "Retrieve Bills",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS_ALL: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsAllScreen(),
      title: "Retrieve Bills",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS_PAID: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsPaidScreen(),
      title: "Retrieve Bills",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
};
