import 'dart:convert';

import 'package:flipkart/Api/api_client.dart';
import 'package:flipkart/ModelClasses/ProductsModelclass.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProductApi{
  ApiClient apiClient = ApiClient();
  ProductsModelclass productsModelclass = ProductsModelclass();
  String productpath = "/api/products?populate=image";
  Future<ProductsModelclass>getProductFunction()async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print("token in api:"+prefs.getString('token').toString());
    Response response = await apiClient.invokeAPI(productpath, "GET", null, prefs.getString('token') );
    return ProductsModelclass.fromJson(jsonDecode(response.body));
  }


}