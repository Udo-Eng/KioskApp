import "package:flutter/material.dart";
import "../../shared/custom_button.dart";
import "../modals/payment_option.dart";

class InvoiceForm extends StatefulWidget {
  final String title;
  final String description;
  final Function onSubmit;
  final String hintText;

  const InvoiceForm(
      {required this.title,
      required this.description,
      required this.onSubmit,
      required this.hintText,
      super.key});

  @override
  State<InvoiceForm> createState() => _InvoiceFormState();
}

class _InvoiceFormState extends State<InvoiceForm> {
  void displayPaymentOptionsModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const PaymentOption(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 304),
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontStyle: FontStyle.normal,
                fontFamily: 'Avenir',
                letterSpacing: -0.5,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 771,
              height: 68,
              child: Text(
                widget.description,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontStyle: FontStyle.normal,
                  fontFamily: 'Avenir',
                  letterSpacing: -0.25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              alignment: const Alignment(0, 0),
              width: 760,
              height: 88,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(167, 167, 167, 1),
                  width: 0.7,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              child:  TextField(
                cursorHeight: 40,
                style: const TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),
                cursorColor: Colors.black,
                decoration: InputDecoration(
                    border: InputBorder.none, 
                    hintText: widget.hintText),
              ),
            ),
            const SizedBox(
              height: 56,
            ),
            CustomButton(
              text: "Submit",
              onClickHandler: () => displayPaymentOptionsModal(context),
            ),
          ]),
    );
  }
}
