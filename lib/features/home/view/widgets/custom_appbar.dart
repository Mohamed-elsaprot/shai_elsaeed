import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/app_styles.dart';
import '../../../../core/router.dart';
import '../../../auth/view/log_in/login.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  double height = 120; bool vis = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      onEnd: ()=> setState(() => vis = height!=120),
      width: double.infinity,height: height.h,
      color: Colors.black54,
      padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 12.h),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Align(alignment: AlignmentDirectional.centerStart,
                        child: GestureDetector(
                          onTap: (){
                            if(height!=120) setState(()=> vis =false);
                            height= height==120?300:120;
                            setState(() {});
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(color: Colors.black38)
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 6,vertical: 3),
                              child: Icon(Icons.menu,color: Colors.white,size: 30.sp,)),
                        )
                    )
                ),
                Expanded(
                  flex: 5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Styles.text('شاي',color: Colors.white,),
                      SizedBox(width: 5.w,),
                      Hero(
                          tag: 'logo',
                          child: Image.asset('assets/images/logo.png',height: 70.h,)),
                      SizedBox(width: 5.w,),
                      Styles.text('الصعيد',color: Colors.white,),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                          onTap: ()=> AppRouter.router.push(AppRouter.cart),
                          child: Icon(Icons.shopping_cart,color: Colors.white,size: 30.sp,)),
                      SizedBox(width: 4.w,),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const LogIn()));
                          },
                          child: Icon(Icons.person,color: Colors.white,size: 30.sp,)),
                    ],
                  ),
                ),
              ],
            ),
            if(vis)Column(
              children: [
                ListTile(title: Styles.text('الصفحة الرئيسية',color: Colors.white),onTap: (){},),
                ListTile(title: Styles.text('طلباتي السابقة',color: Colors.white),onTap: ()=> AppRouter.router.push(AppRouter.prevOrders)),
                ListTile(title: Styles.text('حول',color: Colors.white),onTap: ()=> AppRouter.router.push(AppRouter.aboutUs)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
