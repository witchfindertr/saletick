import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/subscription_controller.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:webview_flutter/webview_flutter.dart';



class SubscriptionPaymentScreen extends StatefulWidget {
  final String subPaymentUrl;
  final String nameOfPlan;
  final int subscriptionStatus;
  
  const SubscriptionPaymentScreen({super.key, required this.subPaymentUrl, required this.nameOfPlan, required this.subscriptionStatus});

  @override
  State<SubscriptionPaymentScreen> createState() => _SubscriptionPaymentScreenState();
}

class _SubscriptionPaymentScreenState extends State<SubscriptionPaymentScreen> {
  

  // Creating webview controller
  late WebViewController myWebViewController;

  // instance of subscription controller
  var subscriptionController = Get.find<SubscriptionController>();

  // instance of auth controller
  var authController = Get.find<AuthController>();

  // check if condition is verified;
  final isPaymentVerified = false.obs;



  @override
  void initState() {

    // Initializing the webview controller
    myWebViewController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          print("Loading: $progress%");
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..addJavaScriptChannel('Toaster', onMessageReceived: (JavaScriptMessage message){
      ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(content: Text(message.message)));
    })
    ..loadRequest(Uri.parse(widget.subPaymentUrl));

    super.initState();
  }


 @override
  Widget build(BuildContext context) {   

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Obx(() {
              return isPaymentVerified.value? const Icon(Icons.check, color: Colors.white) : IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              );
            }
          ),
          backgroundColor: Colors.purple[400],
          elevation: 0,
          title: Text(
            'Pay for ${widget.nameOfPlan}',
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.w600)),
          ),
        ),
        body: Container(
          width: Dimensions.screenWidth,
          height: Dimensions.screenHeight,
          child: WebViewWidget(controller: myWebViewController),
        ),
        bottomNavigationBar: StreamBuilder(
          stream: () async* {

            bool paymentVerified = false;
            
            // This while loop continues to run the verification API until the users payment is confirmed, then it will stop
            //  Then, user will be able to proceed to home
            while(true){
              await Future<void>.delayed(const Duration(seconds: 1));                   
              paymentVerified = await subscriptionController.verifyUserSubscription(widget.subscriptionStatus);
              
              yield {'status': paymentVerified};
              print("Hello, I am trying to verify payment. . .");

              // Stop when the verification has returned successfully
              if(paymentVerified){
                isPaymentVerified.value = paymentVerified;
                break;
              }                    
              
            }
          }(),
          builder: (context, snapshot) {
            if(snapshot.hasData){ 
              print("THIS IS THE STATUS from SNAPshot: ${(snapshot.data as Map)['status']}");
              return BottomAppBar(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [                         
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: Dimensions.size10, horizontal: Dimensions.size25),
                        child: MainButton(
                          text: (snapshot.data as Map)['status']? 'Proceed to Home' : 'Processing . . .',
                          onPressed: (snapshot.data as Map)['status']? authController.goToHomeScreen : (){},
                          isTripleGradient: true,
                        ),
                      ),
                    ),   
                  ],
                ),
              );
            }else{
              return const BottomAppBar();
            }
          }
        )
      ),
    );
  }

}