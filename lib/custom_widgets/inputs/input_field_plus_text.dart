import 'package:flutter/material.dart';
import 'package:saletick/app_constants/app_colors.dart';
import 'package:saletick/app_constants/app_dimensions.dart';


class InputFieldPlusTextWidget extends StatelessWidget {
  final String text;
  final TextEditingController textController;
  final bool isItForNumber;
  final String? myHintText;
  final Function(String value)? onChanged;
  final bool isEmail;
  final bool isPassword;
  
  const InputFieldPlusTextWidget({
    Key? key, 
    required this.text, 
    required this.textController, 
    this.isItForNumber = false, 
    this.myHintText, 
    this.onChanged, 
    this.isEmail = false,
    this.isPassword = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The Text Above the Input Text
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimensions.size15),
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.mainTextColor3,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        // The Input Field
        Container(
          padding: EdgeInsets.symmetric(vertical: Dimensions.size10, horizontal: Dimensions.size10),                   
          child: TextFormField(
            autocorrect: true,
            obscureText: isPassword? true : false,
            controller: textController,
            keyboardType: isItForNumber? TextInputType.number : TextInputType.text,
            onChanged: onChanged,    
            validator: ((value) {
              if(!isEmail){
                if(value!.isEmpty){
                  return 'Provide a value';
                }else{
                  return null;
                }
              }

              if(isEmail){
                if(value!.isEmpty){
                  return 'Email field is empty. Provide your email';
                }else if(!value.contains('@') || !value.contains('.')){
                  return 'Invalid email address';
                }else{
                  return null;
                }
              }
            }),
            decoration: InputDecoration(      
              hintText: myHintText??'', 
              hintStyle: const TextStyle(
                color: AppColors.tarnorFadeTextColor,
                letterSpacing: 1,
                fontWeight: FontWeight.w600,                
              ),                    
              fillColor: AppColors.inputFillColor,
              filled: true,                          
              enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder!.copyWith(
                borderSide: const BorderSide(width: 0.0, color: Colors.white)
              ),
              errorStyle: Theme.of(context).inputDecorationTheme.errorStyle,                            
              errorBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
              focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder, 
              contentPadding:     EdgeInsets.symmetric(vertical: Dimensions.size3, horizontal: Dimensions.size10)                      
            ),
          ),
        ),
      ],
    );
  }
}