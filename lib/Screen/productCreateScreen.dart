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
                child: Column(children: [
                  TextField(onChanged:(value){} ,),
                  TextField(onChanged: (value){},),
                  TextField(onChanged: (value){},),
                  TextField(onChanged: (value){},),
                  TextField(onChanged: (value){},)
                ],),
              )
            )
          ],
      ),
    );
  }
}
