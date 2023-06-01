import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/widgets/shared/payment/widgets/mobile.dart';
import 'package:kiosk_desktop_app/widgets/shared/payment/widgets/windows.dart';

class PaymentWidget extends StatelessWidget {
  final String transactionReference;
  final double amount;
  final Function(String transactionRef) handlePaymentCompleted;
  final VoidCallback handlePaymentCancelled;
  final VoidCallback handlePaymentReady;
  final VoidCallback handleNoInternetConnection;
  final double screenWidth;
  final double screenHeight;
  const PaymentWidget({
    super.key,
    required this.amount,
    required this.transactionReference,
    required this.handlePaymentCompleted,
    required this.handlePaymentCancelled,
    required this.handlePaymentReady,
    required this.handleNoInternetConnection,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS) {
      return MobilePlatforms(
        amount: amount,
        transactionReference: transactionReference,
        handlePaymentCompleted: handlePaymentCompleted,
        handlePaymentCancelled: handlePaymentCancelled,
        handlePaymentReady: handlePaymentReady,
        handleNoInternetConnection: handleNoInternetConnection,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      );
    } else if (Platform.isWindows) {
      return WindowsWebViewWidget(
        amount: amount,
        transactionReference: transactionReference,
        handlePaymentCompleted: handlePaymentCompleted,
        handlePaymentCancelled: handlePaymentCancelled,
        handlePaymentReady: handlePaymentReady,
        handleNoInternetConnection: handleNoInternetConnection,
        screenWidth: screenWidth,
        screenHeight: screenHeight,
      );
    } else {
      return const Text(
        "Platform not supported",
        style: TextStyle(color: Colors.red, fontSize: 100),
      );
    }
  }
}
