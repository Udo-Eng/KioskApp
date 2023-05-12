import 'dart:convert';
import 'package:http/http.dart';
import "../configs/app_config.dart";


Future<dynamic> fetchInvoiceDetails(String invoiceNumber) async {


  final response =
      await get(Uri.parse('$API_BASE_URL/Lookup/$invoiceNumber/invoice?hospitalId=D8D8538E-4911-4748-A93B-FC427F316CF3?application=HmisPay'));

      if (response.statusCode == 200) {

       Map result =  json.decode(response.body);

       return result;

      } else {
        throw Exception('failed to load data');
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