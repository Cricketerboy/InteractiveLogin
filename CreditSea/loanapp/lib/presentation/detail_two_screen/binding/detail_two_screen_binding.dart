import 'package:get/get.dart';
import 'package:loanapp/presentation/detail_two_screen/controller/detail_two_screen_controller.dart';

class DetailTwoScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DetailTwoScreenController());
  }
}
