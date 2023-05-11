
import 'dart:convert';
import 'package:crud_restapi/Style/style.dart';
import 'package:http/http.dart'as http;

ProductCreateRequest(FormValues)
async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var PostBody = json.encode(FormValues);
  var PostHeader = {"content-Type": "application/json"};


  var response = await http.post(URL, headers: PostHeader, body: PostBody);

  
  
}