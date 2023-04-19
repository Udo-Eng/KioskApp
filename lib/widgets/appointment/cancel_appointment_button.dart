import "package:flutter/material.dart";
import "../../icons/svg.dart";



class CancelAppointmentButton extends StatelessWidget {
  const CancelAppointmentButton({super.key});

  @override
  Widget build(BuildContext context) {
    void handleCloseAppointmentButton() {
      Navigator.pop(context);
    }

    return GestureDetector(
      onTap: () {
        handleCloseAppointmentButton();
      },
      child: CancelAppointmentIcon(
        width: 45,
        height: 45,
        color: const Color.fromRGBO(23, 86, 139, 1),
      ),
    );
  }
}
