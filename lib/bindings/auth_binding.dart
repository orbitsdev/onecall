import 'package:get/get.dart';
import 'package:onecall/constant/controllers.dart';
import 'package:onecall/controllers/auth_controller.dart';

class AuthBinding extends Bindings {

@override
  void dependencies() {
    Get.put<AuthController>(authcontroller);
  }
}