import 'package:get/get.dart';

class CustomerController extends GetxController {
  var isJobAdded = false.obs;

  addJob() {
    isJobAdded.value = true;
  }
}
