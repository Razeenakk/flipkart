import 'dart:convert';
import 'dart:developer';
import 'package:flipkart/Api/api_exception.dart';
import 'package:http/http.dart';
class ApiClient {

  static final String basePath = 'http://192.168.18.32:1338';
  Future<Response> invokeAPI(String path, String method, Object? body, String? token
      ) async {

    Map<String, String> headerParams = {

      "authorization" : "Bearer $token",'Accept': 'application/json','Content-Type': 'application/json'
    };
    Response response;

    String url = basePath + path;
    // String searchurl =  basePath + 'search/movie'+'?api_key=$token'+ path;
    print(url);
    print(body);
    // print(searchurl);
    final nullableHeaderParams = (headerParams.isEmpty) ? null : headerParams;

    switch (method) {
      case "POST":
        response = await post(Uri.parse(url), headers: headerParams, body: body);
        break;
      case "LOGIN":
        response = await post(Uri.parse(url), headers: {'content-Type': 'application/json',}, body: body);
        break;
      case "PUT":
        response = await put(Uri.parse(url), headers: headerParams, body: body);
        break;
      case "DELETE":
        response = await delete(Uri.parse(url), headers: nullableHeaderParams);
        break;
      case "POST_":
        response = await post(Uri.parse(url), headers: headerParams,body: body,);
        break;
      case "GET_":
        response = await post(Uri.parse(url), headers:  {},body: body,);
        break;
      // case "SEARCH_":
      //   response = await get(Uri.parse(searchurl), headers: {'Accept': 'application/json','Content-Type': 'application/json'});
      //   break;
      default:
        response = await get(Uri.parse(url), headers: headerParams);
    }

    print('status of $path =>' + (response.statusCode).toString());
    print(response.body);
    if (response.statusCode >= 400) {
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);

      throw ApiException(
          message: _decodeBodyBytes(response), statusCode: response.statusCode);
    };
    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers['content-type'];
    if (contentType != null && contentType.contains("application/json")) {
      return jsonDecode(response.body)['message'];
    } else {

      return response.body;

    }
  }
}

