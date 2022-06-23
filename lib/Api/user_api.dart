import 'dart:convert';

import 'package:flipkart/Api/api_client.dart';

import 'package:flipkart/ModelClasses/signin_modelclass.dart';
import 'package:flipkart/ModelClasses/signup_modelclass.dart';
import 'package:flipkart/ModelClasses/uploadimage_class.dart';

import 'package:http/http.dart';

class UserApi {
  // login api
  ApiClient apiClient = ApiClient();
  SigninModelclass signinModelclass = SigninModelclass();
  String signinpath = "/api/auth/local";
  Future<SigninModelclass> getSigninFunction(String email ,String password) async {
    final credential = "{     \"identifier\": \"$email\",\"password\": \"$password\"}";
    Response response = await apiClient.invokeAPI(signinpath, 'LOGIN', credential, null);
   // print(credential.toString());
    return SigninModelclass.fromJson(jsonDecode(response.body));
  }

  SignupModelclass signupModelclass = SignupModelclass();
  String signuppath = "/api/auth/local/register";
  Future<SignupModelclass>getSignupFunction(String username , String email , String password)async{
    final credentialsignup = "{    \"username\": \"$username\", \"email\": \"$email\" , \"password\" : \"$password\"}";
    Response response = await apiClient.invokeAPI(signuppath,'LOGIN', credentialsignup, null);
    return SignupModelclass.fromJson(jsonDecode(response.body));

  }





}
