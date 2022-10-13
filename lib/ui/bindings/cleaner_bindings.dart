import 'package:cleaner_network_flutter/ui/controllers/cleaner_controller.dart';
import 'package:get/get.dart';

class CleanerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CleanerController(),
    );
  }
}
