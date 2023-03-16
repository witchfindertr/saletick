class SubscriptionAPIs {

  // base url
  static const String BASE_URL = "https://api.paystack.co";


  // initialize or start to subscribe a user. This returns a link to the subscription page and 
  // txn referenceID with which to verify the transaction (POST)
  static const String startSubscriptionAPI = "$BASE_URL/transaction/initialize";


  // verify subscription transaction (GET)
  static String verifySubscriptionTxnAPI(String txnReferenceID){
    return "$BASE_URL/transaction/verify/$txnReferenceID";
  }


  // Get List of all Subscribers/Subscriptions (GET)
  static const String fetchAllSubscriptionsAPI = "$BASE_URL/subscription";



  // Get a specific user's subscription details (GET)
  static String getSpecificSubscriptionAPI(String subscriptionCode){
    return "$BASE_URL/subscription/$subscriptionCode";
  }


  // Email a customer a link for updating the card on their subscription (POST)
  static String sendATMcardUpdateEmailAPI(String subscriptionCode){
    return "$BASE_URL/subscription/$subscriptionCode/manage/email";
  }


  // To disable a subscription or cancel a subscription: (POST)
  static const String disableOrCancelSubscriptionAPI = "$BASE_URL/subscription/disable";


}