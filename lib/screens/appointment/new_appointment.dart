import 'package:flutter/material.dart';
import '../../widgets/appointment/new_appointment_form.dart';


class NewAppointmentScreen extends StatelessWidget {
  const NewAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: NewAppointmentForm()),
    );
  }
}
