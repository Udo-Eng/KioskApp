import "package:flutter/material.dart";
import "./form_widgets/radio_button.dart";
import './form_widgets/consultation_fee.dart';
import './form_widgets/date_picker_field.dart';
import './form_widgets/drop_down_menu.dart';
import './form_widgets/availiable_time.dart';
import './cancel_appointment_button.dart';

class NewAppointmentForm extends StatefulWidget {
  const NewAppointmentForm({super.key});

  @override
  State<NewAppointmentForm> createState() => _NewAppointmentFormState();
}

class _NewAppointmentFormState extends State<NewAppointmentForm> {
  final TextEditingController _symptomsEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 773,
      padding: const EdgeInsets.all(20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: 687,
                height: 70.34,
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 33),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color.fromRGBO(242, 242, 242, 1),
                      width: 1.5,
                    ),
                  ),
                ),
                child: Row(
                  children: const <Widget>[
                    Expanded(
                      child: Center(
                        child: Text(
                          "New Appointment",
                          style: TextStyle(
                            fontSize: 28,
                            fontFamily: 'Avenir',
                            fontWeight: FontWeight.w800,
                            color: Color.fromRGBO(41, 43, 51, 1),
                            fontStyle: FontStyle.normal,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                    ),
                    CancelAppointmentButton(),
                  ],
                )),
            // Added a Sized Box for Padding
            const SizedBox(height: 48),
            // Ssymptoms  textfield  Label and Input
            const Text(
              'Why Are You Seeing A Doctor',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w500,
                color: Color.fromRGBO(41, 43, 51, 1),
                fontStyle: FontStyle.normal,
                letterSpacing: -0.25,
              ),
            ),
            const SizedBox(height: 14),
            Container(
              alignment: const Alignment(-3, -2),
              width: 690,
              height: 107,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(89, 165, 223, 0.4),
                  width: 0.7,
                ),
                borderRadius: BorderRadius.circular(0.5),
              ),
              child: TextField(
                controller: _symptomsEditingController,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: const InputDecoration(
                  hintText: 'Describe your symptoms',
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 46),
            // Type of Appointment  Radio Button field
            const MyRadioButtonWidget(
              label: "Type of Appointment",
              option1: "Virtual",
              option2: "Physical",
            ),
            const SizedBox(height: 40),

            // SELECT CLINIC
            const DropDropMenuWidget(
              label: "Clinic",
              items: ["Select clinic","UCH -Ibadan","UTH ikeja"],
            ),


            const SizedBox(
              height: 45,
            ),
            
        
            //  SELECT CLINIC SPECIALTY
            const DropDropMenuWidget(
                label: "Clinic specialty   (Optional)",
                items: ["Select specialty unit","Dentist","Child care"]),

            const SizedBox(
              height: 45,
            ),
            // DATE PICKER FIELD
            DatePickerField(
              showDatePicker: () => {},
              selectedDate: "No selected date",
            ),
            const SizedBox(
              height: 46,
            ),
            // Available Time Picker
            const AvailableTime(),

            // CONSULTATION FEE
            const ConsultationFee(),
            const SizedBox(height: 29),
            // PAYMENT PERIOD RADIO BUTTONS
            const MyRadioButtonWidget(
              label: "When Would You Like To Pay",
              option1: "Pay Now (Recommended)",
              option2: "Pay Later (Before 12midnight)",
            ),

            const SizedBox(
              height: 179,
            ),

            // BOOK AN APPOINTMENT BUTTON
            SizedBox(
              width: 672,
              height: 80,
              child: Center(
                child: SizedBox(
                  width: 563,
                  height: 77,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button press
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 90.0),
                      child: Text(
                        'Book Appointment',
                        style: TextStyle(
                          fontSize: 28,
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w800,
                          color: Color(0xffFFFFFF),
                          fontStyle: FontStyle.normal,
                          letterSpacing: -0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 87,
            ),
          ],
        ),
      ),
    );
  }
}
