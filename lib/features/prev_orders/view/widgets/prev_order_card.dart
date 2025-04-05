import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const.dart';
import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';
import 'order_details_widget.dart';

class PrevOrderCard extends StatelessWidget {
  const PrevOrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.black26,offset: Offset(1, 2),blurRadius: 2)]
      ),
      padding: EdgeInsets.symmetric(horizontal: 6.h,vertical: 4),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 250.w,
                child: Row(
                  children: [
                    SizedBox(height: 55.sp,child: Styles.text('طلب رقم: ')),
                    SizedBox(
                        height: 55.sp,width: 160.sp,
                        child: const SelectableText('c8562d4-5386-425f-98a9',style: TextStyle(fontFamily: fontFamily,fontSize: 18),)),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(width: 80.w, child: FittedBox(fit: BoxFit.scaleDown, child: Styles.text('Mar 23, 2025'),),
              ),
            ],
          ),
          Row(
            children: [
              Styles.text('الاجمالي : ',fontWeight: FontWeight.w600),
              Styles.text('400 د.ك',),
            ],
          ),
          SizedBox(height: 10.h,),
          Row(
            children: [
              Styles.text('الحالة : ',fontWeight: FontWeight.w600),
              Styles.text('تحت المعالجه',color: Colors.orange,fontWeight: FontWeight.w600),
            ],
          ),
          SizedBox(height: 10.h,),
          CustomButton(fun: (){
            showDialog(context: context, builder: (context)=> OrderDetailsWidget());
          }, title: 'عرض التفاصيل',padding: EdgeInsets.symmetric(horizontal: 18.w),)
        ],
      ),
    );
  }
}
