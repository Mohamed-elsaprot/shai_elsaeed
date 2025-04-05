import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';

class CommentsSlider extends StatefulWidget {
  const CommentsSlider({Key? key}) : super(key: key);

  @override
  State<CommentsSlider> createState() => _CommentsSliderState();
}

class _CommentsSliderState extends State<CommentsSlider> {
  final List persons = ['Donia Ahmed', 'Mohamed Yasser', 'Omar Maher',];
  final List comments = [
    'منتج رائع طعمه تحفه',
    'شاي في منتهي الجمال و يعدل المزاج انصح بشده تجربته',
    'منتج رائع طعمه تحفه',
  ];
  int selectedIndex = 0;
  CarouselSliderController? controller;
  @override
  void initState() {
    controller = CarouselSliderController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider.builder(
          itemCount: 3,carouselController: controller,
          itemBuilder: (context, index, realIndex) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 70.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Styles.text(persons[index], size: 20, fontWeight: FontWeight.w600),
                  SizedBox(height: 10.h,),
                  Styles.text(comments[index], textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, maxLines: 2),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) => Icon(Icons.star_rounded, color: Styles.starColor,size: 34.sp,)),
                  )
                ],
              ),
            );
          },
          options: CarouselOptions(
              viewportFraction: 1,
              height: 160.h,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 4),
              autoPlayCurve: Curves.easeInOutCubic,
              reverse: true,
              onPageChanged: (x, _) => selectedIndex=x
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: Row(
            children: [
              GestureDetector(
                onTap: ()=> controller?.animateToPage(selectedIndex==persons.length-1? 0:selectedIndex+1),
                child: Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.transparent),
                  padding: const EdgeInsets.all(15),
                  child: Icon(Icons.arrow_back_ios,size: 25.sp,),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: ()=> controller?.animateToPage(selectedIndex==0? persons.length-1:selectedIndex-1),
                child: Container(
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.transparent),
                  padding: const EdgeInsets.all(15),
                  child: Icon(Icons.arrow_forward_ios,size: 25.sp,),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
