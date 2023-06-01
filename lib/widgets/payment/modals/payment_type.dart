import "package:flutter/material.dart";
import "../../../icons/svg.dart";
import "../../../constants/routes.dart";

class PaymentType extends StatelessWidget {

  final VoidCallback cancelModal;

  const PaymentType({required this.cancelModal,super.key});

  void navigateToPayInvoice(BuildContext context){
          Navigator.of(context).pushNamed(PAYMENT_INVOICE);
  }

 void navigateToRetrieveBills(BuildContext context){
      Navigator.of(context).pushNamed(PAYMENT_RETRIEVE_BILLS);
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
                GestureDetector(
                  onTap: cancelModal,
                  child: CancelSvg(
                    color: const Color.fromRGBO(27, 136, 223, 1),
                    width: 31,
                    height: 30,
                  ),
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
                "Pay invoice",
                style: TextStyle(
                  fontFamily: "Avenir",
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                ),
              )),
              onPressed: () {  navigateToPayInvoice(context);},
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
                  "Retrieve bills",
                  style: TextStyle(
                    fontFamily: "Avenir",
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              onPressed: () {  navigateToRetrieveBills(context); },
            ),
          ),
        ],
      ),
    );
  }
}
