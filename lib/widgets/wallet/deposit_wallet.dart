import 'package:flutter/material.dart';
import './new_deposit_modal.dart';

class MakeNewDepositWallet extends StatefulWidget {
  const MakeNewDepositWallet({super.key});

  @override
  State<MakeNewDepositWallet> createState() => _MakeNewDepositWalletState();
}

class _MakeNewDepositWalletState extends State<MakeNewDepositWallet> {
  void _handleNewDeposit() {
    NewDepositModal(context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 984,
      height: 387,
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
                        'Deposit Balance',
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
                      width: 450,
                      child: const Text(
                        'Money here is the amount deposited by the patient for medical services',
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
                  width: 272.78,
                  height: 75,
                  child: ElevatedButton(
                      style: ButtonStyle(
                        side: MaterialStateProperty.all(
                            BorderSide(width: 1, color: Color(0xff1B88DF))),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3.42292),
                          ),
                        ),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        backgroundColor: const MaterialStatePropertyAll(
                          Color(0xffe4f1fc),
                        ),
                      ),
                      onPressed: _handleNewDeposit,
                      child: const Text(
                        'Make new deposit',
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          color: Color(0xff1B88DF),
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
