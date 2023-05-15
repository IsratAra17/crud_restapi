import 'package:crud_restapi/RestApi/restClient.dart';
import 'package:crud_restapi/Style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductGridViewScreen extends StatefulWidget {
  const ProductGridViewScreen({Key? key}) : super(key: key);

  @override
  State<ProductGridViewScreen> createState() => _ProductGridViewScreenState();
}

class _ProductGridViewScreenState extends State<ProductGridViewScreen> {

  List ProductList=[];
  bool isLoading=true;

  @override
  void initState() {
    CallData();

    // TODO: implement initState
    super.initState();
  }


  CallData()async{

    isLoading=true;
    var data=await ProductGridViewListRequest();
    setState(() {
      ProductList=data as List;
      isLoading=false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List Product")),
      body: Stack(
        children: [
          ScreenBackground(context),
          Container(
            child: isLoading?(Center(child: CircularProgressIndicator(),)):(
            GridView.builder(
                gridDelegate:ProductGridViewStyle(),
                itemCount: ProductList.length,
                itemBuilder: (context, index) {

              return Card(
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children:

                  [
                    Expanded(child: Image.network(ProductList[index]['img'],fit: BoxFit.fill,)),

                  Container(
                    padding:EdgeInsets.fromLTRB(5,5,5,8),
                    child: Column
                      (
                      crossAxisAlignment: CrossAxisAlignment.start,


                      children:
                      [

                        Text(ProductList[index]['Product Name']),
                      SizedBox(height: 7,),
                        Text("Price:"+ProductList[index]['Unit Price']+"BDT"),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         OutlinedButton(onPressed: (){},child: Icon(CupertinoIcons.ellipsis_vertical_circle,size: 18,color: colorGreen,)),
                         SizedBox(width: 4),
                         OutlinedButton(onPressed: (){},child: Icon(CupertinoIcons.delete,size: 18,color: colorRed,),)

                       ],
                     )
                      ],

                  ),),
                  ],
                ),

              );
            }))
            ),

        ],
      ),

    );
  }
}
