import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import 'counter_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w,vertical: 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6.r),
          boxShadow: const [BoxShadow(color: Colors.black12,offset: Offset(4,4,),blurRadius: 10)]
      ),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(14.r),
              child: Image.asset('assets/images/cart_img.jpg',height: 100.sp,width: 100.sp,)),
          SizedBox(width: 12.w,),
          SizedBox(
            height: 100.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Styles.text('شاي الصعيد'),
                SizedBox(height: 4.h,),
                Styles.text('250 جرام'),
                const Spacer(),
                Styles.text('20 د.ك',color: Styles.primary),
              ],
            ),
          ),
          const Spacer(),
          const CounterButton()
        ],
      ),
    );
  }
}
