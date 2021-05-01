import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_api/provider/post_provider.dart';
import 'package:provider_demo_api/provider/product_list_provider.dart';
import 'package:provider_demo_api/provider/property_provider.dart';
import 'package:provider_demo_api/screen/post_data_screen.dart';
import 'package:provider_demo_api/screen/product_screen.dart';
import 'package:provider_demo_api/screen/property_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PostProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PostScreen(),
      ),
    );
  }
}
