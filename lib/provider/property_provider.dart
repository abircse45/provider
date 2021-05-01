import 'package:flutter/material.dart';
import 'package:provider_demo_api/model/property_model.dart';

import 'package:provider_demo_api/services/property_services.dart';


class PropertyProvider extends ChangeNotifier {
  bool _loading = true;
  bool get loading => _loading;

  Property  _product = Property();
  Property get product => _product;
  PropertyService _productListService = PropertyService();

  set product(Property product) {
    _product = product;
    notifyListeners();
  }

fetchProductData() async {
 var data = await _productListService.fetchData();
   _loading = false;

   _product.featured =data;
    //_productdata.featured;
    notifyListeners();
  }
}
