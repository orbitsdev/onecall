import 'package:onecall/models/dynamic_option.dart';
import 'package:onecall/models/product.dart';

class Variation {
  String variationId;
  String name;
  String selectionType;
  bool required;
  List<DynamicOption> dynamicOption;
  Variation({
    required this.variationId,
    required this.name,
    required this.selectionType,
    required this.required,
    required this.dynamicOption,
  });
  
  
 
}
