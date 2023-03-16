import 'package:saletick/subscriptions_setup/sub_api_keys.dart';

class SubPayloads {

  // HEADER here
  static Map<String, String> subHeader = {
    "Authorization": 'Bearer $SECRET_KEY'
  };


  // Start SUBSCRIPTION payload
  static Map<String, String> startSubPayload(String userEmail, String amount, String planCode) {

    return { "email": userEmail, "amount": amount, "plan": planCode };

  }


  // Disable Subscription payload
  static Map<String, String> disableSubPayload(String emailCode, String subscriptionCode) {

    return { "code": subscriptionCode, "token": emailCode };

  }



}