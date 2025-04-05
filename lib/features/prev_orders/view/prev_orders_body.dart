import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shai_elsaeid/features/prev_orders/view/widgets/prev_order_card.dart';

import '../../../core/design/app_styles.dart';
import '../../../core/general_widgets/custom_button.dart';
import '../../../core/router.dart';

class PrevOrdersBody extends StatelessWidget {
  const PrevOrdersBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset('assets/images/tea_paper.jpg', fit: BoxFit.cover,),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Container(
                width: double.infinity,height: 800.h,
                margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Styles.lightGreen),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Styles.text('طلباتي السابقة', size: 25, color: Styles.lightGreen, fontWeight: FontWeight.w600),
                    SizedBox(height: 10.h,),
                    Styles.text('مرحبا Mohamed!', textAlign: TextAlign.center,),
                    Styles.text('يمكنك مراجعة تفاصيل طلباتك أدناه.', textAlign: TextAlign.center,),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      height: 550.h,
                      child: ListView.builder(itemBuilder: (context,index)=> const PrevOrderCard(),itemCount: 4,),
                    ),
                    SizedBox(height: 25.h,),
                    CustomButton(
                      fun: ()=> AppRouter.router.pop(context),
                      textSize: 18,title: 'العودة الى الصفخة الرئيسية',padding: EdgeInsets.symmetric(horizontal: 18.w,vertical: 12.h),)
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
