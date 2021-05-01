import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_api/provider/post_provider.dart';
import 'package:provider_demo_api/provider/property_provider.dart';

class PropertyScreen extends StatefulWidget {



  @override
  _PropertyScreenState createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  @override
  void initState() {
    super.initState();
    var serverData = Provider.of<PropertyProvider>(context,listen: false);
    serverData.fetchProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Demo"),

        ),
        body: Consumer<PropertyProvider>(
          builder: (_,data,child){
            if(data.loading){
              return Center(child: Text("Loading...."),);
            }
else
              return  ListView.builder(
                itemCount:data.product.featured.length,
                itemBuilder: (_,index){
                  var postData = data.product.featured[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      title: Text(postData.listingTitle,style: TextStyle(fontSize: 20),),
                    ),
                  );
                },
              );
          },
        )
    );
  }
}
