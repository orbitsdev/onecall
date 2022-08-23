import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AssistantController extends GetxController{

   static AssistantController instance = Get.find();

  
clearTextField(TextEditingController controller) => controller.clear();


}