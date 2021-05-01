import 'package:flutter/material.dart';
import 'package:provider_demo_api/model/post_model.dart';
import 'package:provider_demo_api/services/post_services.dart';

class PostProvider extends ChangeNotifier {
  List<PostData> _postData = [];

  List<PostData> get postData => _postData;

  bool _isLoading =  true;
  bool get  isloding => _isLoading;



  set postData(List<PostData> product) {
    _postData = postData;
    notifyListeners();
  }

  Services _services = Services();

  Future<void> fetchProductData() async {
    var data = await _services.fetchServer();
    print("Abir2....>>> $data");
    _isLoading = false;

    _postData.addAll(data);

    notifyListeners();
  }
}
