import 'package:crud_restapi/Style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({Key? key}) : super(key: key);

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product "),),
        body:Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  TextField(onChanged:(value){} ,decoration: AppInputDecoration("Product Name"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (value){},decoration: AppInputDecoration("Product Code"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (value){},decoration: AppInputDecoration("Product Image"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (value){},decoration: AppInputDecoration("Unit Price"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (value){},decoration: AppInputDecoration("Total Price"),)
                ],),
              )
            )
          ],
      ),
    );
  }
}
