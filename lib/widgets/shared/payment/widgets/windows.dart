import 'package:flutter/material.dart';
import 'package:kiosk_desktop_app/widgets/shared/payment/config.dart';
import 'dart:async';
import 'package:webview_windows/webview_windows.dart';

class WindowsWebViewWidget extends StatefulWidget {
  final String transactionReference;
  final double amount;
  final Function(String transactionRef) handlePaymentCompleted;
  final VoidCallback handlePaymentCancelled;
  final VoidCallback handlePaymentReady;
  final VoidCallback handleNoInternetConnection;
  final double screenWidth;
  final double screenHeight;
  const WindowsWebViewWidget({
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
  State<WindowsWebViewWidget> createState() => _WindowsWebViewWidgetState();
}

class _WindowsWebViewWidgetState extends State<WindowsWebViewWidget> {
  final _controller = WebviewController();
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // This function will be called after the widget is built
      initPlatformState().whenComplete(() => {
            setState(() => {isLoading = false})
          });
    });
  }
  //!_controller.value.isInitialized

  Future<void> initPlatformState() async {
    String transactionReference = widget.transactionReference;
    double amount = widget.amount;
    String paymentReady = PAYMENT_STATUS['READY'] as String;
    String paymentCancelled = PAYMENT_STATUS['CANCELLED'] as String;
    String paymentCompleted = PAYMENT_STATUS['COMPLETED'] as String;
    String paymentOffline = PAYMENT_STATUS['OFFLINE'] as String;

    await _controller.initialize();
    await _controller.loadStringContent("""
      <html>
            <head>
                <meta charset="utf-8">
                <title>Health Station Kiosk Web Payment</title>
                <style>
                    #loading-container {
                      display: flex;
                      justify-content: center;
                      align-items: center;
                      height: 100vh;
                    }

                    #loading {
                      width: 50px;
                      height: 50px;
                      border: 5px solid #f3f3f3;
                      border-top: 5px solid #3498db;
                      border-radius: 50%;
                      animation: spin 1s infinite linear;
                    }

                    @keyframes spin {
                      0% {
                        transform: rotate(0deg);
                      }
                      100% {
                        transform: rotate(360deg);
                      }
                    }
                    /* Firefox */
                    * {
                      scrollbar-width: thin;
                      scrollbar-color: #c5d8fc;
                    }

                    /* Chrome, Edge, and Safari */
                    *::-webkit-scrollbar {
                      width: 4px;
                    }

                    *::-webkit-scrollbar-track {
                      background: transparent;
                      border-radius: 5px;
                    }

                    *::-webkit-scrollbar-thumb {
                      background-color: transparent;
                      border-radius: 14px;
                      border: 3px solid #c5d8fc;
                    }
                </style>
            </head>
            <body>
              <div id="loading-container">
                <div id="loading"></div>
              </div>
                <script src="https://parkwaycdnstorage.blob.core.windows.net/bank3d/bank3d.min.js"></script>
                <script>
                    const loadingContainer = document.getElementById("loading-container");
  
                    const CURRENCY_CODE = "NGN";
                    const EMAIL = "test@gmail.com";
                    const COLOR = "#123366";
                    const MODE = "test";

                    function openPaymentForm(transactionReference, amount) {

                      const payment = window.Bank3D.createPayment({
                        reference: transactionReference,
                        currencyCode: CURRENCY_CODE,
                        merchantKey: 'B3DD4DloZ2MGZl2JWyhjPoNA',
                        amount: parseInt(amount) * 100,
                        email: EMAIL,
                        color: COLOR,
                        mode: MODE,
                        onReady() {
                          // The popup's iframe has loaded and it's preloader is visible
                          // Use this to stop you own custom preloader
                          loadingContainer.style.display = 'none';
                          window.chrome.webview.postMessage("$paymentReady");
                        },
                        onClose() {
                          // The user closed the popup or transaction was not completed
                          window.chrome.webview.postMessage("$paymentCancelled");
                        },
                        callback(response) {
                          // Transaction was completed and it was successfull.
                          // This is the stage where it's necessary to verify the payment using "reference" argument
                          // window.chrome.webview.postMessage($paymentCompleted);
                          window.chrome.webview.postMessage(response.reference);
                        },
                      });
                      payment.open();
                    }
                    function startPayment() {
                        openPaymentForm("$transactionReference", "$amount");
                    }
                    startPayment();

                    function handleOnlineStatus() {
                        if (navigator.onLine === false) {
                             window.chrome.webview.postMessage("$paymentOffline");
                        }
                    }
                    window.addEventListener('offline', handleOnlineStatus);
                </script>
              </body>
      </html>
                    """);
    // LISTEN DATA FROM HTML CONTENT

    _controller.webMessage.listen((event) {
      if (event == paymentReady) {
        widget.handlePaymentReady();
      } else if (event == paymentCancelled) {
        widget.handlePaymentCancelled();
      } else if (event == paymentOffline) {
        widget.handleNoInternetConnection();
      } else {
        widget.handlePaymentCompleted(event);
      }
    });
  }

  Widget build(BuildContext context) {
    return SizedBox(
        width: widget.screenWidth,
        height: widget.screenHeight,
        child: Column(
          children: [
            isLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Expanded(
                    child: ListView(shrinkWrap: true, children: [
                    Webview(
                      _controller,
                      width: widget.screenWidth,
                      height: widget.screenHeight,
                    )
                  ]))
          ],
        ));
  }
}
