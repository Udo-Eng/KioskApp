import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/constants/routes.dart';
import '../../widgets/home/widgets/card_widget.dart';
import '../../icons/svg.dart';
import '../../widgets/wallet/card_reader_modal.dart';

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

  void handlePayBillsPage() {
    print('Pay Bills Page');
    Navigator.pushNamed(context, PAYMENT_INVOICE);
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
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.fromLTRB(44, 0, 20, 35),
          child: const Text(
            'What would like to do today?',
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
                onPressed: handlePayBillsPage,
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
  }
}
