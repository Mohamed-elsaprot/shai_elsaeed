import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/general_widgets/custom_button.dart';
import '../../../../core/router.dart';

class BackgroundVid extends StatefulWidget {
  const BackgroundVid({Key? key,}) : super(key: key);

  @override
  State<BackgroundVid> createState() => _BackgroundVidState();
}

class _BackgroundVidState extends State<BackgroundVid> {
  late VideoPlayerController controller;
  @override
  void initState() {
    controller = VideoPlayerController.asset('assets/images/backVid.mp4')..play()..setLooping(true)..initialize().then((_) {setState(() {});});
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          controller.value.isInitialized ? FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: controller.value.size.width,
              height: controller.value.size.height,
              child: VideoPlayer(controller),
            ),
          ) : const SizedBox(),
          Center(
            child: Container(
              height: 320.h,width: 300.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: Colors.black38
              ),
              // alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 15.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Styles.text('استمتع بنكهة اصيلة ,',color: Colors.white,size: 28,fontWeight: FontWeight.w900,textAlign: TextAlign.center),
                  Styles.text('شاي الصعيد',color: const Color(0xff6DB741),size: 28,fontWeight: FontWeight.w900,),
                  Styles.text('هو اختيارك المثالي للراحة والدفء',color: Colors.white,size: 28,fontWeight: FontWeight.w900,textAlign: TextAlign.center),
                  SizedBox(height: 10.h,),
                  CustomButton(fun: ()=> AppRouter.router.push(AppRouter.addToCart), title: 'اشتر الأن',textSize: 22,padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 14.h),)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
