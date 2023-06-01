import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/widgets/shared/payment/payment.dart';
import '../../widgets/wallet/fund_wallet.dart';
import '../../widgets/wallet/deposit_wallet.dart';
import '../../widgets/wallet/steps_to_fund_wallet.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(46.23, 64, 46.23, 64),
      alignment: Alignment.center,
      child: Column(
        children: [
          FundWallet(),
          Container(
            height: 41,
          ),
          MakeNewDepositWallet(),
          Container(
            height: 90,
          ),
          StepsToFundWallet(),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return PaymentWidget(
                        amount: 100,
                        transactionReference: "ddbj2k2kks",
                        handlePaymentCompleted: (e) {},
                        handlePaymentCancelled: () {},
                        handlePaymentReady: () {},
                        handleNoInternetConnection: () {},
                        screenWidth: 600,
                        screenHeight: 600,
                      );
                    });
              },
              child: Text("Hello"))
        ],
      ),
    );
  }
}
