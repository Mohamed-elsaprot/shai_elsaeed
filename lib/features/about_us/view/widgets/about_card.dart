import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({Key? key, required this.title, required this.des, required this.image}) : super(key: key);
  final String title, des, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: Colors.black12),
        boxShadow: const [BoxShadow(color: Colors.black12,offset: Offset(4, 4),blurRadius: 20),]
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 8.h),
      margin: EdgeInsets.symmetric(vertical: 20.h),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(image,height: 320.sp,width: 280.sp,fit: BoxFit.cover,)),
          SizedBox(height: 20.h,),
          Styles.text(title,size: 28,color: Styles.primary),
          SizedBox(height: 10.h,),
          Styles.text(des,textAlign: TextAlign.center,color: Styles.lightGreen),
          SizedBox(height: 20.h,),
        ],
      ),

    );
  }
}
