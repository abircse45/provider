import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_api/model/product_model.dart';
import 'package:provider_demo_api/provider/product_list_provider.dart';
import 'package:http/http.dart' as http;

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  Future<List<AllLocation>> getData() async {
    final response = await http.get(
        Uri.parse("https://vromonbuzz.com/api/home/alldata?appKey=VromonBuzz"));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((e) => AllLocation.fromJson(e)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.indigo[800],
        ),
        body: FutureBuilder<List<AllLocation>>(
          future: getData(),
          builder: (_, snapshot) {
            if (snapshot.hasData) {
              List<AllLocation> home = snapshot.data;
              return ListView.builder(

                shrinkWrap: true,
                primary: false,
                itemCount: home.length,
                itemBuilder: (_, index) {
                  return ListTile(
                    title: Text(home[index].location),
                  );
                },
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ));
  }
}
