import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/models/cart_product.dart';
import 'package:onecall/models/product.dart';

enum quantityFunctionType { subtract, add }

class RestaurantController extends GetxController {
  static RestaurantController instance = Get.find();

  List<CartProduct> cartlist = [];
  var newproduct = CartProduct().obs;
  var originalprice;

  void closeSelection() {
    Get.back();
    newproduct(CartProduct());
  }

  void setCartProduct(BuildContext context, Product product) {

      if(newproduct.value.categoryId == product.productId){
          Pop.showProductVariation(context, product);

      }else{
         Map<String, dynamic> productData = product.toJson();
    CartProduct newCartProduct = CartProduct.fromJson(productData);
    newCartProduct.quantity = 1;
    newproduct(newCartProduct);
    originalprice = newproduct.value.price;
    Pop.showProductVariation(context, product);
    update();
      }

   
  }



  void changeProductQuantity(Product product, quantityFunctionType type, ) {
    if (newproduct.value.quantity != null && newproduct.value.quantity! > 0) {
      if (type == quantityFunctionType.add) {
        if (newproduct.value.quantity! < 100) {
          newproduct.value.quantity = newproduct.value.quantity! + 1;
          newproduct.value.price =  product.price * newproduct.value.quantity!;
          update();
        }
      }
      if (type == quantityFunctionType.subtract) {

        if (newproduct.value.quantity! > 1) {
            newproduct.value.quantity = newproduct.value.quantity! - 1;
            newproduct.value.price =  product.price * newproduct.value.quantity!;

          update();
        }else{
          newproduct.value.price = product.price;
        }
      }
    }
  }

  void handleVariation(String variationame, String optionname, ) {
    

    var varationlist = newproduct.value.variation!.singleWhere((e) => e.name == variationame );
    int varindex = newproduct.value.variation!.indexWhere((e) => e.name == variationame );
    int getoptionindex =  varationlist.dynamicOption.indexWhere((element) => element.name == optionname);
    varationlist.dynamicOption[getoptionindex].isSelected = !varationlist.dynamicOption[getoptionindex].isSelected;
    newproduct.value.variation![varindex] =varationlist;
    update();


  
     
    
  }

  var categoryIndex = 0.obs;

  void changeCategory(int index, String restaurantId) {
    print('inside function');
    print(index);
    categoryIndex(index);
    update();
    print(categoryIndex.value);
  }



}
