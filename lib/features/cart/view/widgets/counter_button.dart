import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CounterButton extends StatefulWidget {
  const CounterButton({Key? key}) : super(key: key);

  @override
  State<CounterButton> createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {

  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            if(qty!=1)qty--;
            setState(() {});
          },
          child: Container(
            height: 35.w,width: 35.w,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color:  qty==1?Colors.red.withOpacity(.07): Colors.grey.shade200
            ),
            child: qty==1?const Icon(CupertinoIcons.delete,color: Colors.red,) :Text('-', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w900, color: Colors.black,),),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black12)
          ),
          margin: const EdgeInsets.symmetric(horizontal: 5),
          height: 35.w,width: 45.w,
          alignment: Alignment.center,
          child: FittedBox(
            child: Text(
              qty.toString(),
              style: TextStyle(fontSize: 16.sp, color: Colors.black87,fontWeight: FontWeight.w900),
            ),
          ),
        ),
        GestureDetector(
          onTap: ()async{
            qty++;
            setState(() {});
          },
          child: Container(
            height: 35.w,width: 35.w,
            alignment: AlignmentDirectional.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey.shade200
            ),
            child:Text('+', style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.w500, color: Colors.black,),),
          ),
        )
      ],
    );
  }
}
