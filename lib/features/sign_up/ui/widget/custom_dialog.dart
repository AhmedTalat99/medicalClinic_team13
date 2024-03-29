import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_colors.dart';
import 'package:medical_clinic_team13/core/theming/consts/app_fonts.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});


  @override
  Widget build(BuildContext context) {
    bool isTyping =false;
    return Align(
      alignment: Alignment.bottomCenter,
      child: PopScope(
        canPop: false,
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          child: Container(
            width: 327,
            height: 280.2,
            padding:  EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                 SizedBox(height: 10),
                Text(
                  'The code has been send \n to your mail',
                  style: AppFonts.font16W400deepBlue,
                  textAlign: TextAlign.center,
                ),
                 SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                    child: Text('Enter Code',style: AppFonts.font16W400deepBlue,),
                ),
                SizedBox(height: 3,),
                Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12.0),),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OtpTextField(
                      textStyle: TextStyle(color: Colors.white , fontSize: 20),
                      fillColor: AppColors.primary,
                      filled: true,
                      fieldWidth: 40.0,
                        numberOfFields: 5,
                        borderColor: AppColors.primary,
                        showFieldAsBox: false,

                        onCodeChanged: (String code) {

                        },
                        //runs when every textfield is filled
                        onSubmit: (String verificationCode){
                          showDialog(
                              context: context,
                              builder: (context){
                                return AlertDialog(
                                  title: Text("Verification Code"),
                                  content: Text('Code entered is $verificationCode'),
                                );
                              }
                          );
                        }, //
                       ),
                  ),
                ),
                Row(
                  children: [
                    Text('Time Reminig 1:54'),
                    SizedBox(width: 50,),
                    TextButton(onPressed: (){}, child: Text('Resend Code' , style: TextStyle(color: AppColors.primary),))

                    //
                  ],
                ),
            InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){}, child: Text('Done',style: AppFonts.font16W400deepBlue,),),
                    Icon(Icons.arrow_forward,color: AppColors.deepBlue,)
                  ],
                ),
              ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
