
import 'dart:convert';
import 'package:crud_restapi/Style/style.dart';
import 'package:http/http.dart'as http;


Future<bool>ProductDeleteRequest(id)async{
  var URL=Uri.parse("https://crud.teamrabbil.com/api/v1/DeleteProduct/"+id);

  var PostHeader = {"content-Type": "application/json"};
  var response = await http.get(URL, headers: PostHeader);

  var ResultCode=response.statusCode;
  var ResultBody=json.decode(response.body);

  if(ResultCode==200 && ResultBody['status']=='success')
  {
    SuccessToast("Request Success!");

    return true;
  }
  else
  {
    ErrorToast("Request Failed! Try again!!");
    return false;
  }
}








//Rest api Read the data from server
Future<List>ProductGridViewListRequest()async{
  {
    var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct");
    var PostHeader = {"content-Type": "application/json"};
    var response = await http.get(URL, headers: PostHeader);

    var ResultCode=response.statusCode;
    var ResultBody=json.decode(response.body);

    if(ResultCode==200 && ResultBody['status']=='success')
    {
      SuccessToast("Request Success!");

      return ResultBody['data'];
    }
    else
    {
      ErrorToast("Request Failed! Try again!!");
      return [];
    }
  }
}



Future<bool>ProductCreateRequest(FormValues)
async {
  var URL = Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct");
  var PostBody = json.encode(FormValues);
  var PostHeader = {"content-Type": "application/json"};


  var response = await http.post(URL, headers: PostHeader, body: PostBody);

  var ResultCode = response.statusCode;
  var ResultBody = json.decode(response.body);

  if (ResultCode == 200 && ResultBody['status'] == "success")
  {
    SuccessToast("Request Success!");
    return true;
  }
  else{
    ErrorToast("Request Failed! Try again!!");
    return false;
  }


}
