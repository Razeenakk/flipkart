import 'dart:convert';
import 'dart:io';
import 'package:flipkart/ModelClasses/uploadimage_class.dart';
import 'package:http/http.dart'as http;

class ImageApiClient{
  static final String basePath = 'http://192.168.18.32:1338/upload/';

  Future<UploadimageClass> uploadImage(filepath,String token) async {
    Map<String, String> headerParams = {

      "authorization" : "Bearer $token",
    };

    var request = http.MultipartRequest('POST', Uri.parse(basePath));
    request.headers.addAll(headerParams);
    request.files.add(await http.MultipartFile.fromPath('image', filepath));
   // request.files.add(http.MultipartFile('image', File(filepath).readAsBytes().asStream(), File(filepath).lengthSync(),filename: filepath.split("/").last));
    var res = await request.send();
    print(jsonDecode(request.toString()));
    return  UploadimageClass.fromJson(jsonDecode(res.toString()));
  }
}
// Future<String> uploadImage(filepath, url) async {
//   var request = http.MultipartRequest('POST', Uri.parse(url));
//   request.files.add(await http.MultipartFile.fromPath('image', filepath));
//   var res = await request.send();
//   return res.reasonPhrase;
