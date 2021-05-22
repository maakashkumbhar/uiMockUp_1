import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uimockup1/controlelr/animationControllr.dart';

class BottomScreen extends StatelessWidget {
  final AnimationControllerX animationControllerX =
      Get.put(AnimationControllerX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 30,
                  width: 30,
                  child: IconButton(
                      icon: Icon(
                        Icons.arrow_upward,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        animationControllerX.update_size_of_Container();
                      }),
                ))
          ],
        ));
  }
}
