import 'dart:convert';

import 'package:flipkart/Api/api_client.dart';
import 'package:flipkart/Api/image_apiclient.dart';
import 'package:flipkart/ModelClasses/uploadimage_class.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ImageApi{
 // ApiClient apiClient = ApiClient();
  ImageApiClient imageApiClient = ImageApiClient();

  UploadimageClass uploadimageClass = UploadimageClass();
  String uploadimagepath = "/api/upload/";
  Future<UploadimageClass>getUploadimageFunction(String image )async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Response response = (await imageApiClient.uploadImage(image,prefs.getString('token')!)) as Response;
    return UploadimageClass.fromJson(jsonDecode(response.body));
  }
}
