import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shai_elsaeid/features/home/view/widgets/ad_video_widget.dart';
import 'package:shai_elsaeid/features/home/view/widgets/background_vid.dart';
import 'package:shai_elsaeid/features/home/view/widgets/comments_slider.dart';
import 'package:shai_elsaeid/features/home/view/widgets/custom_appbar.dart';
import 'package:shai_elsaeid/features/home/view/widgets/fotter_column.dart';
import 'package:shai_elsaeid/features/home/view/widgets/tea_image_slider.dart';
import 'package:shai_elsaeid/features/home/view/widgets/texts_column.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              const BackgroundVid(),
              SizedBox(height: 60.h,),
              const TeaImageSlider(),
              SizedBox(height: 30.h,),
              const TextsColumn(),
              SizedBox(height: 80.h,),
              const AdVideoWidget(),
              SizedBox(height: 80.h,),
              const CommentsSlider(),
              const FotterColumn(),
            ],
          ),
          const CustomAppbar()
        ],
      ) ,
    );
  }
}
