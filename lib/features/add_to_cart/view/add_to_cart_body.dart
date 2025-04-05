import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_styles.dart';
import '../../../core/general_widgets/custom_button.dart';
import '../../../general widgets/custom_textField.dart';

class AddToCartBody extends StatelessWidget {
  const AddToCartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            child: Image.asset('assets/images/tea_paper.jpg',fit: BoxFit.cover,),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 12.w,vertical: 18.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(color: Styles.lightGreen),
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(18.r),
                        child: Image.asset('assets/images/product.jpg',height: 150.sp,width: 150.sp,)
                    ),
                    SizedBox(height: 12.h,),
                    Styles.text('شاي الصعيد',size: 31,fontWeight: FontWeight.w600),
                    SizedBox(height: 12.h,),
                    Styles.text('افضل جودة واقل سعر',color: Colors.black38),
                    SizedBox(height: 20.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Styles.text('اختر الججم:',size: 24),
                        SizedBox(height: 15.h,),
                        DropdownButtonFormField(
                          dropdownColor: Colors.white,
                          decoration: InputDecoration(
                            filled: true,fillColor: Colors.grey.shade100,
                            enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black38)),
                            focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Styles.primary))
                          ),
                            items: [
                              DropdownMenuItem(value: 1,child: Styles.text('250 جرام'),),
                              DropdownMenuItem(value: 2,child: Styles.text('500 جرام'),),
                            ],
                            onChanged: (x){}
                        ),
                        SizedBox(height: 20.h,),
                        Styles.text('سعر المنتج :',size: 24),
                        SizedBox(height: 10.h,),
                        Center(child: Styles.text('20 دينار كويتي',size: 24,)),
                        SizedBox(height: 20.h,),
                        Styles.text('تقييم المنتج :',size: 24),
                      ],
                    ),
                    SizedBox(height: 10.h,),
                    RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_rounded,
                        color: Styles.starColor,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Styles.text('أضف تعليقك :',size: 24),
                          SizedBox(height: 10.h,),
                          CustomTextField(controller: TextEditingController(),
                            hint: 'أضف تعليك هنا...',hintSize: 15, maxLines: 2,
                            inputBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.black26),borderRadius: BorderRadius.circular(8.r)),

                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h,),
                    SizedBox(width: double.infinity,
                        child: CustomButton(
                          fun: (){},
                          title: 'أضف الى السلة',textSize: 18,backGroundColor: const Color(0xff6DB741),
                        )
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
