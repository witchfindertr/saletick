class UserSubscriptionModel {
	int id;
	dynamic domain;
	String status;
	String subscriptionCode;
	String emailToken;
	int amount;
	dynamic cronExpression;
	dynamic nextPaymentDate;
	dynamic openInvoice;
	dynamic createdAt;
	dynamic cancelledAt;
	int integration;
	Plan plan;
	Authorization authorization;
	Customer customer;
	int invoiceLimit;
	dynamic splitCode;
	int paymentsCount;

	UserSubscriptionModel({
    required this.id, 
    required this.domain, 
    required this.status, 
    required this.subscriptionCode, 
    required this.emailToken, 
    required this.amount, 
    required this.cronExpression, 
    required this.nextPaymentDate, 
    required this.openInvoice, 
    required this.createdAt, 
    required this.cancelledAt, 
    required this.integration, 
    required this.plan, 
    required this.authorization, 
    required this.customer, 
    required this.invoiceLimit, 
    required this.splitCode, 
    required this.paymentsCount
  });

	UserSubscriptionModel.fromJson(Map<String, dynamic> json):
		id = json['id'],
		domain = json['domain'],
		status = json['status'],
		subscriptionCode = json['subscription_code'],
		emailToken = json['email_token'],
		amount = json['amount'],
		cronExpression = json['cron_expression'],
		nextPaymentDate = json['next_payment_date'],
		openInvoice = json['open_invoice'],
		createdAt = json['createdAt'],
		cancelledAt = json['cancelledAt'],
		integration = json['integration'],
		plan =  Plan.fromJson(json['plan']),
		authorization = Authorization.fromJson(json['authorization']),
		customer = Customer.fromJson(json['customer']),
		invoiceLimit = json['invoice_limit'],
		splitCode = json['split_code'],
		paymentsCount = json['payments_count'];
	



	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['domain'] = this.domain;
		data['status'] = this.status;
		data['subscription_code'] = this.subscriptionCode;
		data['email_token'] = this.emailToken;
		data['amount'] = this.amount;
		data['cron_expression'] = this.cronExpression;
		data['next_payment_date'] = this.nextPaymentDate;
		data['open_invoice'] = this.openInvoice;
		data['createdAt'] = this.createdAt;
		data['cancelledAt'] = this.cancelledAt;
		data['integration'] = this.integration;
    data['plan'] = this.plan;
    data['authorization'] = this.authorization;
    data['customer'] = this.customer;
		data['invoice_limit'] = this.invoiceLimit;
		data['split_code'] = this.splitCode;
		data['payments_count'] = this.paymentsCount;
		return data;
	}
}






class Plan {
	int id;
	String name;
	String planCode;
	String description;
	int amount;
	String interval;
	dynamic sendInvoices;
	dynamic sendSms;
	String currency;

	Plan({
    required this.id, 
    required this.name, 
    required this.planCode, 
    required this.description, 
    required this.amount, 
    required this.interval, 
    required this.sendInvoices, 
    required this.sendSms, 
    required this.currency
  });

	Plan.fromJson(Map<String, dynamic> json):
		id = json['id'],
		name = json['name'],
		planCode = json['plan_code'],
		description = json['description'],
		amount = json['amount'],
		interval = json['interval'],
		sendInvoices = json['send_invoices'],
		sendSms = json['send_sms'],
		currency = json['currency'];
	

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['name'] = this.name;
		data['plan_code'] = this.planCode;
		data['description'] = this.description;
		data['amount'] = this.amount;
		data['interval'] = this.interval;
		data['send_invoices'] = this.sendInvoices;
		data['send_sms'] = this.sendSms;
		data['currency'] = this.currency;
		return data;
	}
}








class Authorization {
	String authorizationCode;
	String bin;
	String last4;
	String expMonth;
	String expYear;
	String channel;
	String cardType;
	String bank;
	String countryCode;
	String brand;
	dynamic reusable;
	String signature;
	dynamic accountName;

	Authorization({
    required this.authorizationCode, 
    required this.bin, 
    required this.last4, 
    required this.expMonth, 
    required this.expYear, 
    required this.channel, 
    required this.cardType, 
    required this.bank, 
    required this.countryCode, 
    required this.brand, 
    required this.reusable, 
    required this.signature, 
    required this.accountName
  });

	Authorization.fromJson(Map<String, dynamic> json):
		authorizationCode = json['authorization_code'],
		bin = json['bin'],
		last4 = json['last4'],
		expMonth = json['exp_month'],
		expYear = json['exp_year'],
		channel = json['channel'],
		cardType = json['card_type'],
		bank = json['bank'],
		countryCode = json['country_code'],
		brand = json['brand'],
		reusable = json['reusable'],
		signature = json['signature'],
		accountName = json['account_name'];
	

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['authorization_code'] = this.authorizationCode;
		data['bin'] = this.bin;
		data['last4'] = this.last4;
		data['exp_month'] = this.expMonth;
		data['exp_year'] = this.expYear;
		data['channel'] = this.channel;
		data['card_type'] = this.cardType;
		data['bank'] = this.bank;
		data['country_code'] = this.countryCode;
		data['brand'] = this.brand;
		data['reusable'] = this.reusable;
		data['signature'] = this.signature;
		data['account_name'] = this.accountName;
		return data;
	}
}






class Customer {
	int id;
	dynamic firstName;
	dynamic lastName;
	String email;
	String customerCode;
	dynamic phone;
	dynamic metadata;
	String riskAction;
	dynamic internationalFormatPhone;

	Customer({
    required this.id, 
    required this.firstName, 
    required this.lastName, 
    required this.email, 
    required this.customerCode, 
    required this.phone, 
    required this.metadata, 
    required this.riskAction, 
    required this.internationalFormatPhone
  });

	Customer.fromJson(Map<String, dynamic> json) :
		id = json['id'],
		firstName = json['first_name'],
		lastName = json['last_name'],
		email = json['email'],
		customerCode = json['customer_code'],
		phone = json['phone'],
		metadata = json['metadata'],
		riskAction = json['risk_action'],
		internationalFormatPhone = json['international_format_phone'];
	

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = this.id;
		data['first_name'] = this.firstName;
		data['last_name'] = this.lastName;
		data['email'] = this.email;
		data['customer_code'] = this.customerCode;
		data['phone'] = this.phone;
		data['metadata'] = this.metadata;
		data['risk_action'] = this.riskAction;
		data['international_format_phone'] = this.internationalFormatPhone;
		return data;
	}
}







// class Authorization {


// 	Authorization({});

// 	Authorization.fromJson(Map<String, dynamic> json) {
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		return data;
// 	}
// }

// class Customer {
// 	Null internationalFormatPhone;

// 	Customer({this.internationalFormatPhone});

// 	Customer.fromJson(Map<String, dynamic> json) {
// 		internationalFormatPhone = json['international_format_phone'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['international_format_phone'] = this.internationalFormatPhone;
// 		return data;
// 	}
// }



// class Authorization {
// 	Null expMonth;
// 	Null expYear;
// 	Null accountName;

// 	Authorization({this.expMonth, this.expYear, this.accountName});

// 	Authorization.fromJson(Map<String, dynamic> json) {
// 		expMonth = json['exp_month'];
// 		expYear = json['exp_year'];
// 		accountName = json['account_name'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['exp_month'] = this.expMonth;
// 		data['exp_year'] = this.expYear;
// 		data['account_name'] = this.accountName;
// 		return data;
// 	}
// }



// class UserSubscriptionModel {
// 	int id;
// 	String domain;
// 	String status;
// 	String subscriptionCode;
// 	String emailToken;
// 	int amount;
// 	String cronExpression;
// 	String nextPaymentDate;
// 	Null openInvoice;
// 	String createdAt;
// 	Null cancelledAt;
// 	int integration;
// 	Authorization plan;
// 	Authorization authorization;
// 	Customer customer;
// 	List<Invoices> invoices;
// 	List<InvoicesHistory> invoicesHistory;
// 	int invoiceLimit;
// 	Null splitCode;
// 	MostRecentInvoice mostRecentInvoice;
// 	int paymentsCount;

// 	UserSubscriptionModel({this.id, this.domain, this.status, this.subscriptionCode, this.emailToken, this.amount, this.cronExpression, this.nextPaymentDate, this.openInvoice, this.createdAt, this.cancelledAt, this.integration, this.plan, this.authorization, this.customer, this.invoices, this.invoicesHistory, this.invoiceLimit, this.splitCode, this.mostRecentInvoice, this.paymentsCount});

// 	UserSubscriptionModel.fromJson(Map<String, dynamic> json) {
// 		id = json['id'];
// 		domain = json['domain'];
// 		status = json['status'];
// 		subscriptionCode = json['subscription_code'];
// 		emailToken = json['email_token'];
// 		amount = json['amount'];
// 		cronExpression = json['cron_expression'];
// 		nextPaymentDate = json['next_payment_date'];
// 		openInvoice = json['open_invoice'];
// 		createdAt = json['createdAt'];
// 		cancelledAt = json['cancelledAt'];
// 		integration = json['integration'];
// 		plan = json['plan'] != null ? new Authorization.fromJson(json['plan']) : null;
// 		authorization = json['authorization'] != null ? new Authorization.fromJson(json['authorization']) : null;
// 		customer = json['customer'] != null ? new Customer.fromJson(json['customer']) : null;
// 		if (json['invoices'] != null) {
// 			invoices = new List<Invoices>();
// 			json['invoices'].forEach((v) { invoices.add(new Invoices.fromJson(v)); });
// 		}
// 		if (json['invoices_history'] != null) {
// 			invoicesHistory = new List<InvoicesHistory>();
// 			json['invoices_history'].forEach((v) { invoicesHistory.add(new InvoicesHistory.fromJson(v)); });
// 		}
// 		invoiceLimit = json['invoice_limit'];
// 		splitCode = json['split_code'];
// 		mostRecentInvoice = json['most_recent_invoice'] != null ? new MostRecentInvoice.fromJson(json['most_recent_invoice']) : null;
// 		paymentsCount = json['payments_count'];
// 	}

// 	Map<String, dynamic> toJson() {
// 		final Map<String, dynamic> data = new Map<String, dynamic>();
// 		data['id'] = this.id;
// 		data['domain'] = this.domain;
// 		data['status'] = this.status;
// 		data['subscription_code'] = this.subscriptionCode;
// 		data['email_token'] = this.emailToken;
// 		data['amount'] = this.amount;
// 		data['cron_expression'] = this.cronExpression;
// 		data['next_payment_date'] = this.nextPaymentDate;
// 		data['open_invoice'] = this.openInvoice;
// 		data['createdAt'] = this.createdAt;
// 		data['cancelledAt'] = this.cancelledAt;
// 		data['integration'] = this.integration;
// 		if (this.plan != null) {
//       data['plan'] = this.plan.toJson();
//     }
// 		if (this.authorization != null) {
//       data['authorization'] = this.authorization.toJson();
//     }
// 		if (this.customer != null) {
//       data['customer'] = this.customer.toJson();
//     }
// 		if (this.invoices != null) {
//       data['invoices'] = this.invoices.map((v) => v.toJson()).toList();
//     }
// 		if (this.invoicesHistory != null) {
//       data['invoices_history'] = this.invoicesHistory.map((v) => v.toJson()).toList();
//     }
// 		data['invoice_limit'] = this.invoiceLimit;
// 		data['split_code'] = this.splitCode;
// 		if (this.mostRecentInvoice != null) {
//       data['most_recent_invoice'] = this.mostRecentInvoice.toJson();
//     }
// 		data['payments_count'] = this.paymentsCount;
// 		return data;
// 	}
// }




