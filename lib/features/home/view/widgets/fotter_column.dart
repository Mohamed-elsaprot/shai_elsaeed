import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../const.dart';
import '../../../../core/design/app_styles.dart';

class FotterColumn extends StatelessWidget {
  const FotterColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/backImage.png', height: 1100.h, fit: BoxFit.fitHeight,),
        Padding(
          padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 325.h),
          child: Column(
            children: [
              Styles.text('شاي الصعيد',
                  size: 31, color: Colors.white, fontWeight: FontWeight.w600),
              SizedBox(height: 8.h,),
              Styles.text('أفضل شاي من قلب الصعيد، طعم لا يُنسى',
                  color: Colors.white),
              SizedBox(height: 12.h,),
              Styles.text(
                  'شاي الصعيد هو رمز للضيافة والأصالة. مستوحى من الأرض الصعيدية الخصبة، يقدم لك شايًا طبيعيًا ذو نكهة غنية ومميزة. نحن نقدم لك تجربة شاي فريدة، حيث نستخدم أفضل الأوراق المختارة بعناية من الأراضي الصعيدية لنوفر لك أفضل جودة في كل كوب.',
                  size: 16,
                  color: Colors.white,
                  textAlign: TextAlign.center),
              SizedBox(height: 12.h,),
              Styles.text('منذ البداية وحتى آخر رشفة، نحن نحرص على تقديم منتج يواكب أعلى معايير الجودة والذوق الرفيع. سواء كنت تستمتع بمذاقه في صباحك الباكر أو في استراحة قصيرة، شاي الصعيد هو الخيار المثالي لك.',size: 16,
                  color: Colors.white,
                  textAlign: TextAlign.center),
              SizedBox(height: 12.h,),
              Styles.text(
              'نحن نقدم خدمة توصيل سريعة إلى جميع أنحاء جمهورية مصر العربية. يمكنك طلب شاي الصعيد بسهولة وسيتولى فريقنا عملية التوصيل بكل احترافية.',
                  color: Colors.white, textAlign: TextAlign.center),
              SizedBox(height: 12.h,),
              Styles.text(
              'نحن في "شاي الصعيد" نعتبر كل كوب شاي ليس مجرد مشروب بل تجربة حقيقية تمتزج فيها الجودة والذوق. دعونا نكون جزءًا من لحظاتك اليومية التي تستحق التميز.'
              ,color: Colors.white, textAlign: TextAlign.center),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Styles.text('البريد الإلكتروني:  ',color: Colors.white, textAlign: TextAlign.center),
                  const SelectableText(
                    "alhendal01@gmail.com",
                    style: TextStyle(fontSize: 18,fontFamily: fontFamily,color: Colors.
                      lightBlue,),
                  ),
                ],
              ),
              SizedBox(height: 14.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Styles.text('رقم الهاتف:  ',color: Colors.white, textAlign: TextAlign.center),
                  const SelectableText(
                    "0096563635575",
                    style: TextStyle(fontSize: 18,fontFamily: fontFamily,color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 14.h,),
              Styles.text(
              '© 2025 جميع الحقوق محفوظة لـ "شاي الصعيد"',
              color: Colors.white, textAlign: TextAlign.center,size: 15),
            ],
          ),
        )
      ],
    );
  }
}
