import 'package:get/get.dart';

class CleanerController extends GetxController {
  var isOnline = false.obs;

  toggleOnline() {
    isOnline.value = !isOnline.value;
  }
}
