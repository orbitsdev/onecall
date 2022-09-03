import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:onecall/dialogs/pop.dart';
import 'package:onecall/models/cart_product.dart';
import 'package:onecall/models/dynamic_option.dart';
import 'package:onecall/models/product.dart';
import 'package:onecall/models/variation.dart';

enum quantityFunctionType { subtract, add }

enum variationSelection { single, multiple }

class RestaurantController extends GetxController {
  static RestaurantController instance = Get.find();

  List<CartProduct> cartlist = [];
  var newproduct = CartProduct().obs;
  var newvariationwithoption = <DynamicOption>[].obs;
  var originalprice;

  void closeSelection() {/////////////ASSSSSSSVGFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFSSSX
    newproduct(CartProduct());
    newvariationwithoption.clear();
    Get.back();
  }

  void setCartProduct(BuildContext context, Product product) {
    if (newproduct.value.categoryId == product.productId) {
      Pop.showProductVariation(context, product);
    } else {
      Map<String, dynamic> productData = product.toJson();
      CartProduct newCartProduct = CartProduct.fromJson(productData);
      
      newCartProduct.quantity = 1;
      newproduct(newCartProduct);
      originalprice = newproduct.value.price;
      Pop.showProductVariation(context, product);
      update();
    }
  }

  void changeProductQuantity(
    Product product,
    quantityFunctionType type,
  ) {
    if (newproduct.value.quantity != null && newproduct.value.quantity! > 0) {
      if (type == quantityFunctionType.add) {
        if (newproduct.value.quantity! < 100) {
          newproduct.value.quantity = newproduct.value.quantity! + 1;
          newproduct.value.price = product.price * newproduct.value.quantity!;
          update();
        }
      }
      if (type == quantityFunctionType.subtract) {
        if (newproduct.value.quantity! > 1) {
          newproduct.value.quantity = newproduct.value.quantity! - 1;
          newproduct.value.price = product.price * newproduct.value.quantity!;

          update();
        } else {
          newproduct.value.price = product.price;
        }
      }
    }
  }

  void addVariation( String variationId, DynamicOption option, ) {


      var variationlist = newproduct.value.variation!.singleWhere((element) => element.variationId == variationId);
      var indexOfVariationList = newproduct.value.variation!.indexWhere((element) => element.variationId == variationId);
      var indexOfSelectedOption = variationlist.dynamicOption.indexWhere((element) => element.name == option.name);
    
      if(variationlist.selectionType == 'multiple'){
      variationlist.dynamicOption[indexOfSelectedOption].isSelected = !variationlist.dynamicOption[indexOfSelectedOption].isSelected;
   
      if(variationlist.dynamicOption[indexOfSelectedOption].isSelected){
        
        newvariationwithoption.add(variationlist.dynamicOption[indexOfSelectedOption]);
        newproduct.value.price = newproduct.value.price! + variationlist.dynamicOption[indexOfSelectedOption].value;
      }else{
        newproduct.value.price = newproduct.value.price! - variationlist.dynamicOption[indexOfSelectedOption].value;
        newvariationwithoption.remove(variationlist.dynamicOption[indexOfSelectedOption]);


      }
           update();
      }

      if(variationlist.selectionType == 'single'){
        

        int indexOfActiveOption =  newproduct.value.variation![indexOfVariationList].dynamicOption.indexWhere((element) => true);
        print(indexOfActiveOption);
        if(indexOfActiveOption != -1){
          print('emppty');
          newproduct.value.variation![indexOfVariationList].dynamicOption[indexOfSelectedOption].isSelected =   !newproduct.value.variation![indexOfVariationList].dynamicOption[indexOfSelectedOption].isSelected;
        }else{
          
          newproduct.value.variation![indexOfVariationList].dynamicOption[indexOfActiveOption].isSelected = false;
          newproduct.value.variation![indexOfVariationList].dynamicOption[indexOfSelectedOption].isSelected =   !newproduct.value.variation![indexOfVariationList].dynamicOption[indexOfSelectedOption].isSelected;
        }
    
    
          
update();
      }
 
      
  }

  

  void removeActiveInex() {}

  var categoryIndex = 0.obs;

  void changeCategory(int index, String restaurantId) {
    print('inside function');
    print(index);
    categoryIndex(index);
    update();
    print(categoryIndex.value);
  }
}
