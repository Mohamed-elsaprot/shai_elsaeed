import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shai_elsaeid/features/about_us/view/widgets/about_card.dart';

import '../../core/design/app_styles.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({Key? key}) : super(key: key);

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
          SingleChildScrollView(
            child: SafeArea(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 12.w, vertical: 18.h),
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: Styles.lightGreen),
                    color: Colors.white),
                child: Column(
                  children: [
                    Styles.text('عن شاي الصعيد',
                        size: 25,
                        color: Styles.lightGreen,
                        fontWeight: FontWeight.w600),
                    SizedBox(height: 20.h,),
                    Styles.text(
                        'شاي الصعيد هو الخيار المثالي لكل من يبحث عن النكهة الأصيلة والجودة العالية. نحرص على تقديم شاي يتميز بالتقاليد المصرية العريقة. جربه الآن واستمتع بكل لحظة.',
                        textAlign: TextAlign.center,
                        color: Styles.lightGreen
                    ),
                    SizedBox(height: 20.h,),
                    const AboutCard(title: 'شاي طبيعي', des: 'نستخدم أوراق شاي طبيعية بنسبة 100% للحصول على أفضل نكهة.', image: 'assets/images/about2.jpg'),
                    const AboutCard(title: 'نكهة أصيلة', des: 'نكهة تجمع بين الأصالة والتميز، تعكس تقاليد الشاي المصري العريق.', image: 'assets/images/about1.jpg'),
                    const AboutCard(title: 'جودة عالية', des: 'نحن نقدم لك شايًا بجودة عالية وبأفضل الممارسات التي تضمن لك تجربة مميزة.', image: 'assets/images/about3.png'),
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
