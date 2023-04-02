import 'dart:math';

import 'package:flutter/material.dart';
import '../../icons/svg.dart';

class StepsToFundWallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 984,
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
          color: Color(0xfff2f5f6),
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(26.86, 56, 26.86, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        'Steps to fund your wallet',
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          fontStyle: FontStyle.normal,
                          color: Color(0xff4F4F4F),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 61, 0, 27),
                      child: Row(
                        children: [
                          Container(
                            child: const Text(
                              'To fund your wallet through;',
                              style: TextStyle(
                                fontSize: 33,
                                fontFamily: 'Avenir',
                                fontStyle: FontStyle.normal,
                                color: Color(0xff4F4F4F),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: const Text(
                              'Bank App, USSD, ATM transfer',
                              style: TextStyle(
                                fontSize: 33,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w800,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff4F4F4F),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // First Paragraph
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                              child: WalletParagraphDot(),
                            ),
                            Container(
                              width: 820,
                              margin:
                                  const EdgeInsets.fromLTRB(16.91, 0, 0, 32),
                              child: const Text(
                                'Click the Fund Wallet button at the top right side to view the account detail of your E-wallet',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff6B6F80),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    // Second paragraph
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 0, 32),
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                  child: WalletParagraphDot(),
                                ),
                                Container(
                                  width: 820,
                                  margin:
                                      const EdgeInsets.fromLTRB(16.91, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: const Text(
                                          'In your app',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xff6B6F80),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: const Text(
                                          'Bank App, USSD, ATM transfer',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xff4F4F4F),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: const Text(
                                          'on your phone and',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xff6B6F80),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            margin: EdgeInsets.fromLTRB(33, 0, 0, 0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'type in the account number you see',
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff6B6F80),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // Third paragraph
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 0, 32),
                      child: Column(
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                  child: WalletParagraphDot(),
                                ),
                                Container(
                                  width: 820,
                                  margin:
                                      const EdgeInsets.fromLTRB(16.91, 0, 0, 0),
                                  child: Row(
                                    children: [
                                      Container(
                                        child: const Text(
                                          'Select',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xff6B6F80),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: const Text(
                                          'ReadyCash',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w800,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xff4F4F4F),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 0, 0, 0),
                                        child: const Text(
                                          'from the list of banks, add the amount you',
                                          style: TextStyle(
                                            fontSize: 28,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                            color: Color(0xff6B6F80),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ]),
                          Container(
                            margin: EdgeInsets.fromLTRB(33, 0, 0, 0),
                            alignment: Alignment.topLeft,
                            child: const Text(
                              'want to fund with',
                              style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff6B6F80),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    // fourth paragraph
                    Container(
                      margin: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                              child: WalletParagraphDot(),
                            ),
                            Container(
                              width: 820,
                              margin:
                                  const EdgeInsets.fromLTRB(16.91, 0, 0, 32),
                              child: const Text(
                                'Input your pin and your Fast-care wallet will be credited immediately.',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff6B6F80),
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(26.86, 65, 26.86, 74),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                          alignment: Alignment.topLeft,
                          child: Row(
                            children: [
                              const Text(
                                'To fund your wallet through',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontFamily: 'Avenir',
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Color(0xff6B6F80),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.fromLTRB(7, 0, 0, 0),
                                child: const Text(
                                  'Readycash Agents,',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w800,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xff4F4F4F),
                                  ),
                                ),
                              )
                            ],
                          )),
                      Container(
                        margin: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                child: WalletParagraphDot(),
                              ),
                              Container(
                                width: 820,
                                margin:
                                    const EdgeInsets.fromLTRB(16.91, 0, 0, 32),
                                child: const Text(
                                  'Look for any ReadyCash agents around the hospital (or anywhere)',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xff6B6F80),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                child: WalletParagraphDot(),
                              ),
                              Container(
                                width: 820,
                                margin:
                                    const EdgeInsets.fromLTRB(16.91, 0, 0, 32),
                                child: const Text(
                                  'Give them the amount you wish to fund your wallet with, in cash',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xff6B6F80),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                child: WalletParagraphDot(),
                              ),
                              Container(
                                width: 820,
                                margin:
                                    const EdgeInsets.fromLTRB(16.91, 0, 0, 32),
                                child: const Text(
                                  'They will make a transfer to your wallet account number',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xff6B6F80),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(45, 0, 0, 0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                                child: WalletParagraphDot(),
                              ),
                              Container(
                                width: 820,
                                margin:
                                    const EdgeInsets.fromLTRB(16.91, 0, 0, 32),
                                child: const Text(
                                  'And your wallet will be funded immediately',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    color: Color(0xff6B6F80),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ]),
              )
            ],
          )),
    );
  }
}
