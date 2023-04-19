import "package:flutter/material.dart";
import "./schedule_success.dart";
import "../../../icons/svg.dart";

class PaymentOption extends StatelessWidget {
  const PaymentOption({super.key});

  void _displayScheduleSuccessModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const ScheduleSuccess(),
        );
      },
    );
  }


// function to  close modal and navigate back to form screen

 void _closeBottomModalSheet(BuildContext context) {
    Navigator.of(context).pop();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(45),
      width: 773,
      height: 754,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            padding: const EdgeInsets.symmetric(vertical: 21),
            width: 674,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color.fromRGBO(208, 212, 217, 1),
                  width: 0.7,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Payment Type",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(30, 32, 36, 1),
                  ),
                ),
                const SizedBox(
                  width: 268,
                ),
                CancelSvg(
                  color: const Color.fromRGBO(27, 136, 223, 1),
                  width: 31,
                  height: 30,
                )
              ],
            ),
          ),
          const SizedBox(height: 154),
          Container(
            width: 674,
            height: 88,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(94, 171, 233, 1),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(174, 213, 245, 0.5)),
                foregroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(27, 136, 223, 1),
                ),
              ),
              child: const Center(
                  child: Text(
                "Fastcare Wallet",
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              )),
              onPressed: () => _displayScheduleSuccessModal(context),
            ),
          ),
          const SizedBox(height: 64),
          Container(
            width: 674,
            height: 88,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(94, 171, 233, 1),
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    const Color.fromRGBO(174, 213, 245, 0.5)),
                foregroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(27, 136, 223, 1),
                ),
              ),
              child: const Center(
                child: Text(
                  "Debit Card",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              onPressed: () => _displayScheduleSuccessModal(context),
            ),
          ),
        ],
      ),
    );
  }
}
