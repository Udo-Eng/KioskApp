import 'package:kiosk_desktop_app/models/invoice.dart';


class PatientDetails {
  final String patientName;
  final String  patientID;
  final String gender;
  final String   tel;
  final List<Invoice>  items; 
 
  PatientDetails({
    required this.patientName,
    required this.patientID,
    required this.tel,
    required this.items,
    required this.gender,
  });
}

