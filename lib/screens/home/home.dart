import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/constants/routes.dart';
import 'package:kiosk_desktop_app/providers/configuration_provider.dart';
import 'package:provider/provider.dart';
import 'package:kiosk_desktop_app/widgets/home/widgets/card_widget.dart';
import 'package:kiosk_desktop_app/icons/svg.dart';
import 'package:kiosk_desktop_app/widgets/wallet/card_reader_modal.dart';
import 'package:kiosk_desktop_app/widgets/payment/modals/payment_type.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isWalletModalOpened = false;

  void _handleSetIsWalletModalOpenedValue(bool value) {
    setState(() {
      _isWalletModalOpened = value;
    });
  }

// function to  close modal and navigate back to form screen
  void closePaymentTypeModal(BuildContext context) {
    Navigator.of(context).pop();
  }

  void _displayPaymentTypeModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        void cancelModal() {
          closePaymentTypeModal(context);
        }

        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: PaymentType(
            cancelModal: cancelModal,
          ),
        );
      },
    );
  }

  void handleAppointmentPage() {
    print('Appointment Page');
  }

  void _handleWalletPage(BuildContext context) {
    print('Wallet Page');
    _handleSetIsWalletModalOpenedValue(true);
    if (true) {
      Navigator.pushNamed(context, WALLET_SCREEN_ROUTE);
    } else {
      EWalletCardReaderModal(
          context: context,
          updateModalStateValue: _handleSetIsWalletModalOpenedValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigurationProvider>(
        builder: (context, ConfigurationProvider, child) {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(44, 0, 20, 35),
            child: const Text(
              'What would like to do today?',
              //  ConfigurationProvider.hospitalConfigurationDetails.HospitalId,
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 36,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
                letterSpacing: -0.5,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeCardItem(
                  coloredIcon: EWalletBalanceHomeColoredIconSvg(),
                  plainIcon: EWalletBalanceHomePlainIconSvg(),
                  firstBgColor: const Color(0xFFFFFFFF),
                  secondBgColor: const Color(0xFFF1B88DF),
                  textContent: 'E-wallet Balance',
                  firstTextColor: const Color(0xFF1B88DF),
                  sendTextColor: const Color(0xFFFAFDFE),
                  onPressed: () {
                    _handleWalletPage(context);
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                HomeCardItem(
                  coloredIcon: PayBillsColoredIconSvg(),
                  plainIcon: PayBillsPlainIconSvg(),
                  firstBgColor: const Color(0xFFFFFFFF),
                  secondBgColor: const Color(0xFFF1B88DF),
                  textContent: 'Pay Bills',
                  firstTextColor: const Color(0xFF1B88DF),
                  sendTextColor: const Color(0xFFFAFDFE),
                  onPressed: () => _displayPaymentTypeModal(context),
                ),
                const SizedBox(
                  height: 30,
                ),
                HomeCardItem(
                  coloredIcon: BookAppointmentColoredIconSvg(),
                  plainIcon: BookAppointmentPlainIconSvg(),
                  firstBgColor: const Color(0xFFFFFFFF),
                  secondBgColor: const Color(0xFFF1B88DF),
                  textContent: 'Book Appointments',
                  firstTextColor: const Color(0xFF1B88DF),
                  sendTextColor: const Color(0xFFFAFDFE),
                  onPressed: handleAppointmentPage,
                ),
              ],
            ),
          )
        ],
      );
    });
  }
}
