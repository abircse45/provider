import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo_api/provider/post_provider.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {


  @override
  void initState() {
    super.initState();
   var serverData = Provider.of<PostProvider>(context,listen: false);
   serverData.fetchProductData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),

      ),
      body: Consumer<PostProvider>(
        builder: (_,data,child){
          if(data.isloding){
            return Center(child: CircularProgressIndicator(),);
          }
          else

          return  ListView.builder(
            itemCount:data.postData.length ,
            itemBuilder: (_,index){
              var postData = data.postData[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(postData.title.toString(),style: TextStyle(fontSize: 20),),
                ),
              );
            },
          );
        },
      )
    );
  }
}
