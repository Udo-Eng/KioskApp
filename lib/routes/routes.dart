import 'package:flutter/material.dart';
import '../constants/routes.dart';
import '../widgets/home/home_layout.dart';
import '../screens/home/home.dart';
import '../widgets/configuration/configuration_layout.dart';
import '../screens/configuration/configuration.dart';
import '../screens/configuration/configuration_success.dart';
import '../widgets/wallet/wallet_layout.dart';
import '../screens/wallet/wallet.dart';
import '../widgets/payment/invoice/invoice_layout.dart';
import '../screens/payments/invoice/invoice.dart';
import '../screens/payments/retrieve_bills/retrieve_bills.dart';
import '../screens/payments/invoice/invoice_details.dart';
import '../screens/payments/retrieve_bills/retrieve_bills_outstanding.dart';
import '../screens/payments/retrieve_bills/retrieve_bills_paid.dart';
import '../screens/payments/retrieve_bills/retrieve_bills_all.dart';
import './navigation_handlers.dart';

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
      title: "Patient Invoice",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
  PAYMENT_RETRIEVE_BILLS_PAID: (context) {
    return InvoiceLayout(
      childWidget: const RetrieveBillsPaidScreen(),
      title: "Patient Invoice",
      navText: "Home",
      onBackButtonPress: () => navigateToHome(context, HOME_SCREEN_ROUTE),
    );
  },
};
