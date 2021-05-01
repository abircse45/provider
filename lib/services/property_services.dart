import 'dart:convert';

import 'package:provider_demo_api/model/post_model.dart';
import 'package:http/http.dart' as http;
import 'package:provider_demo_api/model/property_model.dart';

class PropertyService {
   fetchData() async {
    String url = "https://suuq.cwprojects.xyz/api/property";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      print("ABIR>>>>>>  ${response.body}");
      return jsonData;
    }
  }
}
