import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shai_elsaeid/features/cart/view/widgets/cart_item.dart';

import '../../../core/design/app_styles.dart';
import '../../../core/general_widgets/custom_button.dart';
import '../../../core/router.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset(
              'assets/images/tea_paper.jpg',
              fit: BoxFit.cover,
            ),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 780.h,
              margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Styles.lightGreen),
                  color: Colors.white),
              child: Column(
                children: [
                  Styles.text('سلة التسوق',size: 25,color: Styles.primary,),
                  SizedBox(height: 20.h,),
                  SizedBox(
                    height: 480.h,
                    child: ListView.separated(
                        itemBuilder: (context, index) => const CartItem(),
                        separatorBuilder: (context, index) => SizedBox(height: 20.h,),
                        itemCount: 8),
                  ),
                  SizedBox(height: 40.h,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Styles.text('السعر الكلي : ',size: 18,fontWeight: FontWeight.w600),
                        Styles.text('140 د.ك',size: 18),
                        const Spacer(),
                        CustomButton(fun: ()=> AppRouter.router.push(AppRouter.checkOut), title: 'الانتقال الى الدفع',padding: EdgeInsets.symmetric(horizontal: 10.w),)
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h,),
                  GestureDetector(
                      onTap: ()=> AppRouter.router.pop(context),
                      child: Styles.text('العودة الى الصفحة الرئيسية',color: Styles.primary))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
