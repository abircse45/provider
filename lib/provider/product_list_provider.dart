import 'package:flutter/material.dart';
import 'package:provider_demo_api/model/product_model.dart';
import 'package:provider_demo_api/services/product_services.dart';

class ProductProvider with ChangeNotifier {

  bool _loading = false;
  bool get loading => _loading;

  List<DataList> _product = [];
  List<DataList> get product => _product;
  ProductListService _productListService = ProductListService();

  set product(List<DataList> product) {
    _product = product;
    notifyListeners();
  }

  Future<void> fetchProductData() async {
    var data = await _productListService.getProducts();
    _product.addAll(data);
    notifyListeners();
  }
}
