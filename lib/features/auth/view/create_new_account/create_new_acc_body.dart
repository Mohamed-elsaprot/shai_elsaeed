import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';
import '../../../../general widgets/custom_textField.dart';
import '../log_in/login.dart';
import '../widgets/auth_layout_widget.dart';
import '../widgets/password_field.dart';

class CreateNewAccBody extends StatelessWidget {
  const CreateNewAccBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthLayoutWidget(
          body: [
            Hero(
              tag: 'logo',
              child: Center(
                child: Image.asset('assets/images/logo.png',height: 180.h,),
              ),
            ),
            SizedBox(height: 25.h,),
            Styles.text('الاسم بالكامل *'),
            SizedBox(height: 6.h,),
            CustomTextField(
              controller: TextEditingController(),
              fillColor: Colors.white,
              inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
            ),
            SizedBox(height: 20.h,),
            Styles.text('البريد الإلكتروني *'),
            SizedBox(height: 6.h,),
            CustomTextField(
              controller: TextEditingController(),
              fillColor: Colors.white,
              inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
            ),
            SizedBox(height: 20.h,),
            Styles.text('كلمة المرور *'),
            SizedBox(height: 6.h,),
            const PasswordField(),
            SizedBox(height: 20.h,),
            SizedBox(
                width: double.infinity,
                child: CustomButton(fun: (){}, title: 'تسجيل الاشتراك',textSize: 18,padding: EdgeInsets.symmetric(vertical: 15.h),)
            ),
            SizedBox(height: 10.h,),
            Center(
              child: TextButton(
                onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LogIn()));
                },
                style: TextButton.styleFrom(
                    elevation: 0,overlayColor: Colors.transparent
                ),
                child: Styles.text('هل لديك حساب بالفعل؟ سجل الدخول',fontWeight: FontWeight.w600,color: Styles.primary,decoration: TextDecoration.underline),
              ),
            )
          ]
      ),
    );
  }
}
