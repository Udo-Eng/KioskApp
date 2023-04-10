import 'package:flutter/material.dart';

sharedErrorModal({context, errorMessage, width, height}) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          child: Container(
            constraints: const BoxConstraints(maxHeight: 200, maxWidth: 200),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )),
                  Container(
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: errorMessage,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.redAccent,
                            wordSpacing: 1,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      });
}
