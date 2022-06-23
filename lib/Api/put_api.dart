import 'dart:convert';

import 'package:flipkart/Api/api_client.dart';
import 'package:flipkart/ModelClasses/updateuser_modelclass.dart';
import 'package:flipkart/ModelClasses/uploadimage_class.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UpdateUserApi{


  ApiClient apiClient = ApiClient();
  UpdateuserModelclass updateuserModelclass = UpdateuserModelclass();
  String userpath = "/api/users/1";
  Future<UpdateuserModelclass> getUpdateUserFunction(String email ,String password)async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final credential = "{     \"profilepic\" : \"8\"}";
    Response response = await apiClient.invokeAPI(userpath, "PUT", credential, prefs.getString('token'));
    return UpdateuserModelclass.fromJson(jsonDecode(response.body));
  }

}


