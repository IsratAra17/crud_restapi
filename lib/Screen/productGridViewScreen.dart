import 'package:crud_restapi/RestApi/restClient.dart';
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
    return Scaffold();
  }
}
