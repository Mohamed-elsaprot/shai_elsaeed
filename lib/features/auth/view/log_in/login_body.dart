import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';
import '../../../../general widgets/custom_textField.dart';
import '../create_new_account/create_new_account.dart';
import '../widgets/auth_layout_widget.dart';
import '../widgets/password_field.dart';

class LogInBody extends StatefulWidget {
  const LogInBody({Key? key}) : super(key: key);

  @override
  State<LogInBody> createState() => _LogInBodyState();
}

class _LogInBodyState extends State<LogInBody> {
  var con1=TextEditingController();

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
            Styles.text('البريد الإلكتروني *'),
            SizedBox(height: 6.h,),
            CustomTextField(
              controller: con1,
              fillColor: Colors.white,
              inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
            ),
            SizedBox(height: 20.h,),
            Styles.text('كلمة المرور *'),
            SizedBox(height: 6.h,),
            const PasswordField(),
            TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                  elevation: 0,overlayColor: Colors.transparent
              ),
              child: Styles.text('هل نسيت كلمة المرور؟',color: Styles.primary,decoration: TextDecoration.underline),
            ),
            SizedBox(height: 10.h,),
            SizedBox(
                width: double.infinity,
                child: CustomButton(fun: (){}, title: 'تسجيل الدخول')),
            SizedBox(height: 5.h,),
            SizedBox(
                width: double.infinity,
                child: CustomButton(
                    fun: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const CreateNewAccount()));
                    },
                    backGroundColor: Colors.transparent,
                    textColor: Styles.primary,
                    borderSide: const BorderSide(color: Styles.primary),
                    title: 'انشاء حساب جديد'
                )),
          ]
      ),
    );
  }
}

