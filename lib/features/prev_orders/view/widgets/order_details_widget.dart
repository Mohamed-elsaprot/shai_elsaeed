import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const.dart';
import '../../../../core/design/app_styles.dart';

class OrderDetailsWidget extends StatelessWidget {
  const OrderDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: double.infinity,height: 400.h,
            margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: Styles.lightGreen),
                color: Colors.white
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Styles.text('تفاصيل الطلب رقم :'),
                      SizedBox(width: 10.w,),
                      const Flexible(child: SelectableText('c8562d4-5386-425f-98a9-a921879733da',style: TextStyle(fontFamily: fontFamily,fontSize: 16),textAlign: TextAlign.center))
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                      Styles.text('تاريخ الطلب :  ',fontWeight: FontWeight.w600),
                      Flexible(child: Styles.text('Mar 23, 2025, 10:32:57 PM')),
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                      Styles.text('الإجمالي :  ',fontWeight: FontWeight.w600),
                      Styles.text('40 د.ك '),
                    ],
                  ),
                  SizedBox(height: 15.h,),
                  Row(
                    children: [
                      Styles.text('حالة الطلب :  ',fontWeight: FontWeight.w600),
                      Styles.text('تحت المعالجه'),
                    ],
                  ),
                  Divider(indent: 20.w,endIndent: 20.w,height: 30.h,),
                  Styles.text('تفاصيل المنتجات :  ',fontWeight: FontWeight.w600),
                  Padding(
                    padding: EdgeInsetsDirectional.only(start: 25.w),
                    child: Column(
                      children: List.generate(4, (index)=> Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2),
                        child: Styles.text('* شاي الصعيد - 1 × KWD 20.00'),
                      )),
                    ),
                  )
                ],
              ),
            ),
          ),

          Padding(
            padding:  EdgeInsetsDirectional.only(start: 20.w),
            child: GestureDetector(
                onTap: ()=> Navigator.pop(context),
                child: const CircleAvatar(child: Icon(Icons.close),radius: 22,backgroundColor: Colors.white,)),
          ),
        ],
      ),
    );
  }
}

