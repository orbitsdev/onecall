import 'package:get/get.dart';
import 'package:onecall/controllers/home_controller.dart';

class HomeBinding extends Bindings {

  @override
  void dependencies() {

  Get.put<HomeController>(HomeController());
  }
 
}