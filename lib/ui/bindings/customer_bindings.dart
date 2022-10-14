import 'package:cleaner_network_flutter/ui/controllers/cleaner_controller.dart';
import 'package:cleaner_network_flutter/ui/controllers/customer_controller.dart';
import 'package:get/get.dart';

class CustomerBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => CustomerController(),
    );
  }
}
