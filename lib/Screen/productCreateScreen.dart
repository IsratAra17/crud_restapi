
import 'package:crud_restapi/Style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({Key? key}) : super(key: key);

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {

  Map<String,String>FormValues={
    "Img":"",
    "ProductCode":"",
    "ProductName":"",
    "Qty":"",
    "TotalPrice":"",
    "UnitPrice":""
  };

  InputOnChange(MapKey,textvalue)
  {
    setState(() {
      FormValues.update(MapKey, (value) => textvalue);
    });
  }

FormOnSubmit() {
  if (FormValues['ProductName']!.length == 0) {

    ErrorToast('Product Name Required!');

  }

  else if (FormValues['ProductCode']!.length == 0) {
    ErrorToast('Product Name Required!');

  }
  else if (FormValues['Img']!.length == 0) {
    ErrorToast('Image link required!');

  }
  else if (FormValues['Qty']!.length == 0) {
    ErrorToast('Product Code Required!');

  }
  else if (FormValues['UnitPrice']!.length == 0) {
    ErrorToast('Unit Price Required!');

  }
  else if (FormValues['TotalPrice']!.length == 0) {
    ErrorToast('Total Price Required!');

  }
  else
    {

    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Product "),),
        body:Stack(
          children: [
            ScreenBackground(context),
            Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(20),
                child: Column(children: [
                  TextField(onChanged:(textvalue){
                    InputOnChange("ProductName",textvalue);
                  } ,decoration: AppInputDecoration("Product Name"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (textvalue){
                    InputOnChange("ProductCode",textvalue);
                  }
                  ,decoration: AppInputDecoration("Product Code"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (textvalue){
                    InputOnChange("Img",textvalue);
                  },decoration: AppInputDecoration("Product Image"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (textvalue){
                    InputOnChange("UnitPrice",textvalue);
                  },decoration: AppInputDecoration("Unit Price"),),
                  SizedBox(height: 20),
                  TextField(onChanged: (textvalue){
                    InputOnChange("TotalPrice",textvalue);
                  },decoration: AppInputDecoration("Total Price"),),
                  SizedBox(height: 20),


AppDropDownStyle(
                  DropdownButton(
                      value: FormValues['Qty'],
                    items: [
                          DropdownMenuItem(child: Text('Select Qt'),value:""),
                           DropdownMenuItem(child: Text('1 pcs'),value: "1 pcs",),
                            DropdownMenuItem(child: Text('2 pcs'),value: '2 pcs',),
                             DropdownMenuItem(child: Text('3 pcs'),value: '3 pcs',),
                             DropdownMenuItem(child: Text('4 pcs'),value: '4 pcs',),
                  ], onChanged: (textvalue){
                    InputOnChange("Qty",textvalue);
                  },
                  underline: Container(),
                    isExpanded: true,

                  ),),
                  SizedBox(height: 20),
Container(child: ElevatedButton(style: AppButtonStyle(),
  onPressed: (){
  FormOnSubmit();
  }, child: SuccessButtonChild("Submit"),
),)

                ],),
              )
            )
          ],
      ),
    );
  }
}
