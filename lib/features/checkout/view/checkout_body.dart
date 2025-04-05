import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';
import '../../../core/general_widgets/custom_button.dart';
import '../../../general widgets/custom_textField.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset('assets/images/tea_paper.jpg', fit: BoxFit.cover,),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Styles.lightGreen),
                  color: Colors.white
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Styles.text('تفاصيل الدفع عند الاستلام',size: 25,color: Styles.primary,)),
                    SizedBox(height: 20.h,),
                    Styles.text('العنوان *'),
                    SizedBox(height: 6.h,),
                    CustomTextField(
                      controller: TextEditingController(),
                      fillColor: Colors.white,
                      inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                    ),
                    SizedBox(height: 16.h,),
                    Styles.text('المدينة *'),
                    SizedBox(height: 6.h,),
                    CustomTextField(
                      controller: TextEditingController(),
                      fillColor: Colors.white,
                      inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                    ),
                    SizedBox(height: 16.h,),
                    Styles.text('البلد  *'),
                    SizedBox(height: 6.h,),
                    CustomTextField(
                      controller: TextEditingController(),
                      fillColor: Colors.white,
                      inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                    ),
                    SizedBox(height: 16.h,),
                    Styles.text('رقم الهاتف *'),
                    SizedBox(height: 6.h,),
                    CustomTextField(
                      controller: TextEditingController(),
                      fillColor: Colors.white,
                      inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                    ),
                    SizedBox(height: 16.h,),
                    Styles.text('تأكيد رقم الهاتف *'),
                    SizedBox(height: 6.h,),
                    CustomTextField(
                      controller: TextEditingController(),
                      fillColor: Colors.white,
                      inputBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black26)),
                    ),
                    SizedBox(height: 16.h,),
                    Styles.text('طريقة الدفع *'),
                    SizedBox(height: 6.h,),
                    DropdownButtonFormField(
                        dropdownColor: Colors.white,
                        decoration: const InputDecoration(
                            filled: true,fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                            focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Styles.primary))
                        ),
                        items: [
                          DropdownMenuItem(value: 1,child: Styles.text('الدفع عند الاستلام'),),
                        ],
                        onChanged: (x){}
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      width: double.infinity,
                      child: CustomButton(fun: (){}, title: 'تأكيد الطلب',rad: 8,textSize: 18,),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
