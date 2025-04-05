import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeaImageSlider extends StatelessWidget {
  const TeaImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List images = ['t1.jpg','t2.jpg','t3.jpg',];
    return CarouselSlider.builder(
      itemCount: 3,
      itemBuilder: (context, index, realIndex) {
        return Container(color: Colors.lightGreen,width: 300.w,child: Image.asset('assets/images/${images[index]}',fit: BoxFit.cover,));
      },
      options: CarouselOptions(
          viewportFraction: 1,
          height: 400.h,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 4),
          autoPlayCurve: Curves.easeInOutCubic,
          reverse: true,
          onPageChanged: (x, _) {}
      ),
    );
  }
}
