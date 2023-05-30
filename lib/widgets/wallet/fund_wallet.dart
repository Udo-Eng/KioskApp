import 'package:flutter/material.dart';

import './fund_wallet_modal.dart';

class FundWallet extends StatefulWidget {
  const FundWallet({super.key});

  @override
  State<FundWallet> createState() => _FundWalletState();
}

class _FundWalletState extends State<FundWallet> {
  @override
  Widget build(BuildContext context) {
    handleFundWalletModal() {
      FundWalletModal(
          context: context, accountNumber: '2265734987', bankName: "ReadyCash");
    }

    return Container(
      width: 984,
      height: 359,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(2, 2),
          blurRadius: 40,
          spreadRadius: 40,
          color: Color.fromRGBO(125, 123, 123, 0.05),
        ),
      ]),
      child: Card(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 0.5,
            color: Color(0xffB6DAF6),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.fromLTRB(106.46, 102, 68.65, 46),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        '₦ 0.00',
                        style: TextStyle(
                          fontSize: 44,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          color: Color(0xff1B88DF),
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 67),
                      child: const Text(
                        'E-Wallet',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w500,
                          color: Color(0xff6B6F80),
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.25,
                        ),
                      ),
                    ),
                    Container(
                      child: const Text(
                        'Money here is the total amount in the patient’s wallet',
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w400,
                          color: Color(0xff545766),
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.25,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 246.75,
                  height: 75,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3.42292)),
                        ),
                        backgroundColor:
                            const MaterialStatePropertyAll(Color(0xff1B88DF)),
                      ),
                      onPressed: handleFundWalletModal,
                      child: const Text(
                        'Fund wallet',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.25,
                        ),
                      )),
                )
              ]),
        ),
      ),
    );
  }
}
