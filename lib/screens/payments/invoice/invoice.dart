import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import '../../../widgets/payment/invoice/invoice_form.dart';
import '../../../constants/routes.dart';
import 'package:kiosk_desktop_app/services/payment.dart';
import 'package:kiosk_desktop_app/providers/configuration_provider.dart';
import "dart:convert";
import "package:kiosk_desktop_app/widgets/shared/error_modal.dart";
import "package:kiosk_desktop_app/models/invoice_details.dart";
import "package:kiosk_desktop_app/models/invoice_item.dart";

// function to convert response data to invoice data
InvoiceDetailsModel convertDataToInvoiceData(Map data) {
  List<InvoiceItem> items = [];
  double grandTotal = 0;
  double discountAmount = 0;

  for (var item in data["Items"]) {
    if (item["NetAmount"] > 0) {
      grandTotal += item["NetAmount"];
    }

    if (item["DiscountAmount"] > 0) {
      discountAmount += item["DiscountAmount"];
    }

    items.add(InvoiceItem(
        total: item["NetAmount"],
        amount: item["Price"],
        itemName: item["Name"],
        quantity: item["Quantity"]));
  }

  DateTime date = DateTime.parse(data["InvoiceDate"]);

  var patientInvoice = InvoiceDetailsModel(
      patientName: data["PatientName"],
      patientID: "",
      invoiceNumber: data["Number"],
      physicianName: "Dr Eudy",
      tel: "",
      date: date,
      time: date,
      items: items,
      grandTotal: grandTotal,
      discountAmount: discountAmount,
      total: grandTotal);

  return patientInvoice;
}

class InvoiceScreen extends StatefulWidget {
  const InvoiceScreen({super.key});

  @override
  State<InvoiceScreen> createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final configurationProvider = Provider.of<ConfigurationProvider>(context);
    final String hospitalId =
        configurationProvider.hospitalConfigurationDetails.HospitalId;
    double width = MediaQuery.of(context).size.width;
    const String title = "Invoice Number";
    const String description =
        "Enter the invoice number to view the invoice and make payments";

    // Function to handle Form submiting
    void onSubmitHandler(BuildContext context, String invoiceNumber) async {

      setState(() {
            isLoading = true;
          });

      try {

        // Send Lookup  network request to obtain Invoice details

        var response = await PaymentApiService.fetchInvoiceDetails(
            hospitalId: hospitalId,
            application: "HmisPay",
            invoiceNumber: invoiceNumber);

        var jsonData = json.decode(response.body);

        var patientData = convertDataToInvoiceData(jsonData);
         setState(() {
            isLoading = false;
          });
        // Navigate to the invoice Details page
        // ignore: use_build_context_synchronously
        Navigator.of(context)
            .pushNamed(PAYMENT_INVOICE_DETAILS, arguments: patientData);
      } catch (e) {

         setState(() {
            isLoading = false;

          });
        sharedErrorModal(
            context: context,
            errorMessage: e.toString(),
            width: 500,
            height: 500);
      }
    }

    return Container(
      width: width,
      height: 1700,
      decoration: const BoxDecoration(
          border: Border.symmetric(
        horizontal: BorderSide.none,
        vertical: BorderSide(
          color: Color.fromRGBO(90, 200, 250, 0.4),
          width: 20,
        ),
      )),
      margin: const EdgeInsets.all(10),
      child: InvoiceForm(
        isLoading: isLoading,
        title: title,
        description: description,
        onSubmit: onSubmitHandler,
        hintText: 'Enter invoice number',
      ),
    );
  }
}
