import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_api/provider/product_list_provider.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    super.initState();
    var dataModel = Provider.of<ProductProvider>(context,listen: false);
    dataModel.fetchProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.indigo[800],
        ),
        body: Consumer<ProductProvider>(
          builder: (context, auth, _) {


        return ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: auth.product.length,
              itemBuilder: (_, index) {
                var aaaa = auth.product[index];
                return ListTile(
                  title: Text(
                    aaaa.name,
                    style: TextStyle(fontSize: 20),
                  ),
                );
              },
            );
          },
        ));
  }
}
