// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:provider_demo_api/model/product_model.dart';
//
// class ProductListService {
//   final _dio = Dio();
//
//   Future<List<DataList>> getProducts() async {
//     try {
//       final Response response = await _dio.get(
//         "https://gagro.com.bd/api/product-data",
//       );
//       print(response.data);
//       return (response.data['data']['data_list'] as List)
//           .map((e) => DataList.fromJson(e))
//           .toList();
//     } catch (e) {
//       return null;
//     }
//   }
// }
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:provider_demo_api/model/product_model.dart';

class ProductListService {
  final _dio = Dio();

  Future<List<DataList>> getProducts() async {
    try {
      final Response response = await _dio.get(
        "https://gagro.com.bd/api/product-data",
      );
      print(response.data);
      return (response.data['data']['data_list'] as List)
          .map((e) => DataList.fromJson(e))
          .toList();
    } catch (e) {
      return null;
    }
  }
}
