import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthLayoutWidget extends StatelessWidget {
  const AuthLayoutWidget({super.key, required this.body});
  final List<Widget> body;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          child: Image.asset(
            'assets/images/greenBackground.jpg',
            fit: BoxFit.cover,
          ),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                color: const Color(0xffEFF3F0)
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
            margin: EdgeInsets.symmetric(horizontal: 16.w,),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: body,
              ),
            ),
          ),
        )
      ],
    );
  }
}
