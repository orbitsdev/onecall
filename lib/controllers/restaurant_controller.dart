import 'package:get/get.dart';

class RestaurantController  extends GetxController
{
static RestaurantController instance = Get.find();

var categoryIndex = 0.obs;

void changeCategory(int index, String restaurantId) {

    print('inside function');
    print(index);
    categoryIndex(index);
    update();
    print(categoryIndex.value);
}

}