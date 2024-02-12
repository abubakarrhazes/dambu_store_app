import 'dart:convert';
import 'dart:io';

import 'package:dambu_store_app/utils/constants/app_utils/app_utils.dart';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

class HttpHelper {

  static const baseUrl = 'http://172.20.10.4:5000/api/v1/';


  bool _isLoading = false;
  String _resMessage = '';

  //Getters
  bool get isLoading => _isLoading;
  String get resMessage => _resMessage;


  static const requestHeaderWithoutAuthorization = {
    'Accept': 'application/vnd.api+json',
    'Content-Type': 'application/json',





  };



   _handleSuccessResponse(
      http.Response response, BuildContext context) async {


    try {
      final responseData = await _parseResponse(response);
      _resMessage = responseData["message"];
      AppUtils.successShowToast(context, _resMessage);

    } catch (e) {
      print('Error handling success response: $e');
      AppUtils.showToast(context, 'Error Handling');
    }
  }

  void _handleErrorResponse(
      http.Response response, BuildContext context) async {
    try {
      final res = await _parseResponse(response);
      _resMessage = res['message'];
      AppUtils.showToast(context, _resMessage);


    } catch (e) {
      print('Error handling error response: $e');
      AppUtils.showToast(context, 'Error Handling');
    }
  }

  Future<dynamic> _parseResponse(http.Response response) async {
    final String responseBody = response.body;
    final dynamic decodedResponse = json.decode(responseBody);
    return decodedResponse;
  }

  void _handleError(BuildContext context, String errorMessage) {

    _resMessage = errorMessage;
    AppUtils.showToast(context, _resMessage);
  }





}