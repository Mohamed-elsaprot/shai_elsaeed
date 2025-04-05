import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

import '../general_widgets/custom_button.dart';
import 'app_styles.dart';

Widget cachedImage(String img,{double? rad,BoxFit boxFit=BoxFit.fill,bool smallImage=false,bool slider = false,double? height=220,double? width=double.infinity}){
  return ClipRRect(
    borderRadius: BorderRadius.circular(rad??0),
    child: SizedBox(
      height: height,
      width: width,
      child: CachedNetworkImage(
        placeholder: (context, url) => Shimmer.fromColors(
          baseColor: Colors.black12,
          highlightColor: Colors.white12,
          child: Container(
            color: Colors.white,
            height: width,width: width,
          ),
        ),
        errorWidget: (context, url, error) {
          return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline),
            SizedBox(height: 8.h,),
            FittedBox(child: Styles.text('No Image Found',textAlign: TextAlign.center)),
          ],
        );
        },
        imageUrl: img,
        fit: boxFit,
      ),
    ),
  );
}

Widget shimmerWidget({required double height,required double width,double? rad=0,EdgeInsetsGeometry? margin,BorderRadiusGeometry? borderRad}){
  return Shimmer.fromColors(
    baseColor: Colors.black12,
    highlightColor: Colors.white12,
    child: Container(
      height: height.h,width: width.w,
      decoration: BoxDecoration(
        borderRadius:borderRad?? BorderRadius.circular(rad!.r),
        color: Colors.white,
      ),
      margin: margin,
    ),
  );
}

errorDialog({required BuildContext context,required String message,})async{
  showDialog(context: context, builder: (context){
    return AlertDialog(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Styles.text(message,textAlign: TextAlign.center),
          SizedBox(height: 20.h,),
          CustomButton(
            padding: EdgeInsets.symmetric(horizontal: 45.w,vertical: 10.h),
            fun: () => Navigator.pop(context),
            title: 'Close',
            rad: 50,textSize: 12,
          )
        ],
      ),
    );
  });
}

bottomSheet(BuildContext context,Widget body,{double rad=20,void Function()? fun,bool dismissible=true,}){
  return showModalBottomSheet(
      context: context,
      isDismissible: dismissible,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(rad.r))),
      builder: (_){
        return body;
      }).then((value) async{
    if(fun!=null) fun();
  });
}


