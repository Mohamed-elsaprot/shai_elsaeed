import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';
import '../../../../core/router.dart';

class TextsColumn extends StatelessWidget {
  const TextsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          Styles.text('شاي الصعيد الفاخر',
              size: 31,
              fontWeight: FontWeight.w700,
              textAlign: TextAlign.center),
          SizedBox(height: 10.h,),
          Styles.text(
              '''استمتع بنكهة أصيلة مع شاي الصعيد الذي يمنحك راحة واسترخاء في كل كوب. هذا الشاي مصنوع من أجود الأوراق الطبيعية التي تم جمعها بعناية فائقة لضمان تجربة لا مثيل لها.

كل ورقة من شاي الصعيد تحمل في طياتها تاريخًا طويلًا من العناية والاهتمام في زراعتها، مما يضمن لك أفضل طعم وأعلى جودة في كل كوب. بفضل طريقة التحضير الخاصة، يتم تقديم شاي الصعيد بأفضل نكهة وطعم مميز.''',
               textAlign: TextAlign.center,),
          SizedBox(height: 12.h,),
          Styles.text('أفضل جودة بأقل سعر',color: Styles.primary,size: 18,fontWeight: FontWeight.w700),
          SizedBox(height: 8.h,),
          Styles.text('استمتع بشاي طبيعي يضمن لك نكهة مميزة وراحة تامة، سواء كنت تبدأ يومك أو تستمتع بلحظات هادئة في المساء.',textAlign: TextAlign.center),
          SizedBox(height: 25.h,),
          CustomButton(fun: ()=> AppRouter.router.push(AppRouter.addToCart), title: 'عرض التفاصيل',textSize: 25,padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 14.h),)
        ],
      ),
    );
  }
}
