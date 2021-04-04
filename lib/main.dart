import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_api/provider/product_list_provider.dart';
import 'package:provider_demo_api/screen/product_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> ProductProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductScreen(),
      ),
    );
  }
}
