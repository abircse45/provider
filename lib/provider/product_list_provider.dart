// import 'package:flutter/material.dart';
// import 'package:provider_demo_api/model/product_model.dart';
// import 'package:provider_demo_api/services/product_services.dart';
//
// class ProductProvider with ChangeNotifier {
//
//   bool _loading = false;
//   bool get loading => _loading;
//
//   List<HomeLocation> _product = [];
//   List<HomeLocation> get product => _product;
//   ProductListService _productListService = ProductListService();
//
//   set product(List<HomeLocation> product) {
//     _product = product;
//     notifyListeners();
//   }
//
//   Future<void> fetchProductData() async {
//     var data = await _productListService.getProducts();
//     print("abir...${data}");
//     _product.addAll(data);
//     notifyListeners();
//   }
// }
