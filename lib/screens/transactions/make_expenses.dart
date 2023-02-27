import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saletick/controllers/auth_controller.dart';
import 'package:saletick/controllers/product_controller.dart';
import 'package:saletick/custom_widgets/header/header_one_widget.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';
import 'package:saletick/custom_widgets/buttons/main_button.dart';
import 'package:saletick/custom_widgets/inputs/input_field_plus_text.dart';
import 'package:saletick/utilities/feedback.dart';

class MakeExpensesScreen extends StatefulWidget {
  const MakeExpensesScreen({super.key});

  @override
  State<MakeExpensesScreen> createState() => _MakeExpensesScreenState();
}

class _MakeExpensesScreenState extends State<MakeExpensesScreen> {

  // form key
  GlobalKey<FormState> makeExpensesFormKey = GlobalKey<FormState>();

  // product controller instance
  ProductController _productController = Get.find<ProductController>();

  // auth controller
  AuthController authController = Get.find<AuthController>();

  // text controllers
  var expensesNameController = TextEditingController();
  var totalAmountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.saletickScaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header HERE
            const SaletickHeaderOne(headerOneTitleText: 'Expenses'),
            SizedBox(height: Dimensions.size100),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.size20),
              child: Form(
                key: makeExpensesFormKey,
                child: Column(
                  children: [
                    // Reason for spending
                    InputFieldPlusTextWidget(
                      text: 'Reason for Spending', 
                      textController: expensesNameController,
                      customTextInputAction: TextInputAction.next,
                    ),
                    SizedBox(height: Dimensions.size25),
                    // Amount
                    InputFieldPlusTextWidget(
                      text: 'Amount', 
                      textController: totalAmountController,
                      isItForNumber: true,
                      customTextInputAction: TextInputAction.done,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimensions.size40),
            // Main Button Here
            MainButton(
              onPressed: (){
                if(makeExpensesFormKey.currentState!.validate()){
                  // some variables
                  var expenseReason = expensesNameController.text.trim();
                  var expenseAmount = totalAmountController.text.trim();  
                  var fullName = "${authController.currentUserData.surname}  ${authController.currentUserData.firstName}";               

                  // getting confirmation from the user
                  UserFeedBack.showConfirmation(
                    onConfirm: (){
                      // Calling our function which helps us make an expenses
                      Get.back();
                      _productController.addExpensesToRecords(
                        expensesName: expenseReason, 
                        amountSpent: expenseAmount, 
                        isAdmin: authController.currentUserData.isAdmin,
                        adminEmail: authController.currentUserData.myAdminEmailAddress,
                        whoMadeExpenses: fullName,
                      );
                    }, 
                    confirmQuestion: 'Continue to create this expenses?'
                  );
                }
              }, 
              text: 'Add Expenses'
            ),
          ],
        ),
      ),
    );
  }
}