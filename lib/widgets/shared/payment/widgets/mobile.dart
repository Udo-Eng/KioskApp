import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:kiosk_desktop_app/widgets/shared/payment/config.dart';

class MobilePlatforms extends StatefulWidget {
  final String transactionReference;
  final double amount;
  final Function(String transactionRef) handlePaymentCompleted;
  final VoidCallback handlePaymentCancelled;
  final VoidCallback handlePaymentReady;
  final VoidCallback handleNoInternetConnection;
  final double screenWidth;
  final double screenHeight;
  const MobilePlatforms({
    super.key,
    required this.amount,
    required this.transactionReference,
    required this.handlePaymentCompleted,
    required this.handlePaymentCancelled,
    required this.handlePaymentReady,
    required this.handleNoInternetConnection,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  State<MobilePlatforms> createState() => _MobilePlatformsState();
}

class _MobilePlatformsState extends State<MobilePlatforms> {
  late WebViewController _controller;
  bool _isLoading = true;

  void _loadHtmlFromAssets() async {
    String htmlString =
        await rootBundle.loadString('assets/modules/index.html');
    _controller.loadUrl(Uri.dataFromString(htmlString,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.screenWidth,
      height: widget.screenHeight,
      child: Column(
        children: [
          WebView(
            initialUrl: "",
            javascriptMode: JavascriptMode.unrestricted,
            onPageFinished: (String url) {
              var transactionReference = widget.transactionReference;
              var amount = widget.amount;

              _controller.runJavascript(
                'openPaymentForm($transactionReference, $amount)',
              );
              setState(() {
                _isLoading = false;
              });
            },
            onWebViewCreated: (WebViewController controller) {
              _controller = controller;
              _loadHtmlFromAssets();
            },
            javascriptChannels: {
              JavascriptChannel(
                name: PAYMENT_STATUS['READY'] as String,
                onMessageReceived: (e) {
                  setState(() {
                    _isLoading = false;
                  });
                  widget.handlePaymentReady();
                },
              ),
              JavascriptChannel(
                name: PAYMENT_STATUS['CANCELLED'] as String,
                onMessageReceived: (e) => widget.handlePaymentCancelled(),
              ),
              JavascriptChannel(
                name: PAYMENT_STATUS['COMPLETED'] as String,
                onMessageReceived: (e) =>
                    widget.handlePaymentCompleted(e.message),
              ),
              JavascriptChannel(
                name: PAYMENT_STATUS['OFFLINE'] as String,
                onMessageReceived: (e) => widget.handleNoInternetConnection(),
              ),
            },
          ),
          _isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
