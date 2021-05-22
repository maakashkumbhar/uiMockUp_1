import 'package:get/get.dart';

class AnimationControllerX extends GetxController {
  double height_of_container = 0;
  double positioned_top_value = 550;

  void update_size_of_Container() {
    positioned_top_value = positioned_top_value - 430;
  }
}
