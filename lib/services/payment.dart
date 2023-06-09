import 'package:http/http.dart' as http;
import "../configs/app_config.dart";
// import "package:kiosk_desktop_app/models/patients_details.dart";

class PaymentApiService {
  // GET REQUEST $API_BASE_URL/Lookup/$invoiceNumber/invoice
  static Future<http.Response> fetchInvoiceDetails(
      {required String hospitalId,
      required String application,
      required String invoiceNumber}) async {
    String url =
        '$API_BASE_URL/Lookup/$invoiceNumber/invoice?application=$application&hospitalId=$hospitalId';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return response;

    } else {
      throw Exception('Unable to fetch invoice details');
    }
  }

// GET REQUEST $API_BASE_URL/Lookup/$patientNumber/finalpayment
  static Future<http.Response> fetchPatientBills(
      String hospitalId, String application, String patientNumber) async {
    String url =
        '$API_BASE_URL/Lookup/$patientNumber/finalpayment?hospitalId=$hospitalId&application=$application';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Unable to fetch  patient invoice Bills ');
    }
  }

// Implement the service for the POST request to
// $API_BASE_URL​/Payment​/{reference}​/invoice
  static Future<bool> paymentInvoice(
      String hospitalId, String application, String reference) async {
    String url =
        '$API_BASE_URL/Payment/$reference/invoice?hospitalId=$hospitalId&application=$application';
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Unable to validate invoice payment');
    }
  }

// $API_BASE_URL​/Payment​/{reference}​/finalpayment
  static Future<bool> finalPayment(
      String hospitalId, String application, String reference) async {
    String url =
        '$API_BASE_URL/Payment/$reference/invoice?hospitalId=$hospitalId&application=$application';
    final response = await http.post(Uri.parse(url));
    if (response.statusCode == 200) {
      return true;
    } else {
      throw Exception('Unable to validate final payment');
    }
  }

// $API_BASE_URL/Transaction/finalpayment/init

// SAMPLE PATIENTS DETAILS MAP COLLECTION
// {
//   "patientId": "string",
//   "amount": 0,
//   "paymentType": "string"
// }

  static Future<http.Response> finalPaymentTransactionInit(String hospitalId,
      String application, Map<String, dynamic> patientDetails) async {
    String url =
        '$API_BASE_URL/Transaction/finalpayment/init?hospitalId=$hospitalId&application=$application';

    final response = await http.post(Uri.parse(url), body: patientDetails);
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Unable to initialize a transaction ');
    }
  }
}

// Request Url https://switch.healthstation.ng/api/Lookup/IN20270/invoice?application=HmisPay&hospitalId=D8D8538E-4911-4748-A93B-FC427F316CF3

// Sample responds from server
// {
//   "InvoiceDate": "2023-04-28T10:13:00.44+01:00",
//   "Id": "83d73cb7-4582-496f-a001-3deb2fb23c6d",
//   "Number": "IN20270",
//   "PatientName": "John Doe",
//   "Gender": "Male",
//   "HospitalNumber": null,
//   "TotalAmount": 14000,
//   "Items": [
//     {
//       "Id": "dbb0457c-74b6-4db5-a0bb-96e6285ce74d",
//       "InvoiceNumber": null,
//       "TransactionDate": "0001-01-01T00:00:00+01:00",
//       "Name": "Consultancy CYTOLOGY (Path/C/01)",
//       "NetAmount": 9000,
//       "Quantity": 1,
//       "Price": 9000,
//       "GrossAmount": 0,
//       "DiscountAmount": 0,
//       "WaivedAmount": 0
//     },
//     {
//       "Id": "560014af-5ffe-44ac-a516-d7326ea088e4",
//       "InvoiceNumber": null,
//       "TransactionDate": "0001-01-01T00:00:00+01:00",
//       "Name": "FNAC/FNAB (CYTOLOGY) (CONSULTANCY)",
//       "NetAmount": 5000,
//       "Quantity": 1,
//       "Price": 5000,
//       "GrossAmount": 0,
//       "DiscountAmount": 0,
//       "WaivedAmount": 0
//     }
//   ]
// }
