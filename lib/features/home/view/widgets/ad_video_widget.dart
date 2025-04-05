import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';

class AdVideoWidget extends StatefulWidget {
  const AdVideoWidget({Key? key}) : super(key: key);

  @override
  State<AdVideoWidget> createState() => _AdVideoWidgetState();
}

class _AdVideoWidgetState extends State<AdVideoWidget> {
  late VideoPlayerController controller;

  void initState() {
    controller = VideoPlayerController.asset('assets/images/adVid.mp4')..play()..setLooping(true)..initialize().then((_) {setState(() {});});
    super.initState();
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return controller.value.isInitialized ? FittedBox(
      fit: BoxFit.cover,
      child: SizedBox(
        width: controller.value.size.width.w,
        height: controller.value.size.height.h,
        child: VideoPlayer(controller),
      ),
    ) : const SizedBox();
  }
}
