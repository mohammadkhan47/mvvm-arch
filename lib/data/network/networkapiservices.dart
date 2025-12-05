import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:mvvmproject/data/app_exception.dart';
import 'package:mvvmproject/data/network/baseapiservices.dart';

class NetworkApiService extends BaseApiServices {
  @override
  Future<dynamic> getApiresponse(String url) async{
    dynamic responsejson;
    try{
      final response = await http.get(Uri.parse('uri')).timeout(Duration(seconds: 10));
      responsejson = returnResponse(response);

    }on SocketException{
      throw FetchDataException('no internet connection');
    }
    return responsejson;
  }

  @override
  Future<dynamic> getPostApiresponse(String url, dynamic data) async{

    dynamic responsejson;
    try{
      http.Response response = await http.post(
          Uri.parse(url),
        body: data
      ).timeout(Duration(seconds: 10));
      responsejson = returnResponse(response);

    }on SocketException{
      throw FetchDataException('no internet connection');
    }
    return responsejson;
  }

  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      case 400:
        throw BadrequestException(response.body.toString());
      case 500:
        throw UnauthorizedException(response.body.toString());
      case 404:
        throw UnimplementedError(response.body.toString());
      default:
        throw FetchDataException('error occured while communicating with server '+' with status code '+response.statusCode.toString());
    }
  }

}