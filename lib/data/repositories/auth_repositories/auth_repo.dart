import 'dart:convert';
import 'dart:io';

import 'package:dambu_store_app/common/helpers/http_helpers.dart';
import 'package:dambu_store_app/data/providers/shared_storage/local_storage.dart';
import 'package:dambu_store_app/features/auth/models/auth_model.dart';
import 'package:dambu_store_app/features/auth/models/user.dart';
import 'package:dambu_store_app/utils/constants/app_utils/app_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class AuthRepo extends GetxController {
  static AuthRepo get instance => Get.find();

  //Register User Repo
  Future<void> registerUserRepo(
      AuthModel authModel, BuildContext context) async {
    try {
      final http.Response response = await http.post(
          Uri.parse('${HttpHelper.baseUrl}/auth/register'),
          body: authModel.toJson(),
          headers: HttpHelper.requestHeaderWithoutAuthorization);
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final responseMessage = responseData['message'];
        AppUtils.successShowToast(context, responseMessage);

      }
    } on SocketException catch (_) {
      AppUtils.showToast(context, 'No Internet Connection Try Again Later');
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //Login User Repo
  Future<User?> loginUserRepo(AuthModel authModel, BuildContext context) async {
    try {
      final http.Response response = await http.post(
        Uri.parse(
          '${HttpHelper.baseUrl}/auth/login',
        ),
        body: authModel.toJson(),
        headers: HttpHelper.requestHeaderWithoutAuthorization,
      );
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final responseMessage = responseData['message'];
        AppUtils.successShowToast(context, responseMessage);
        User user =
            User.fromMap(responseData['data']['user'] as Map<String, dynamic>);
        final localStorage = await LocalStorage.getInstance();
        localStorage.setToken(responseData['token']);
        localStorage.setUserId(responseData['_id']);

        return user;
      }
    } on SocketException catch (_) {
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  //Forgot Password Repo

  Future<void> forgotUserPasswordRepo(
      AuthModel authModel, BuildContext context) async {
    try {
      final http.Response response = await http.post(
        Uri.parse('${HttpHelper.baseUrl}/auth/forgot-password'),
        body: authModel.toJson(),
        headers: HttpHelper.requestHeaderWithoutAuthorization,

      );
      if (response.statusCode == 200){
        final responseData = json.decode(response.body);
        final responseMessage = responseData['message'];
        AppUtils.successShowToast(context, responseMessage);
      }
    } on SocketException catch (_) {
      AppUtils.showToast(context, 'No Internet Connection Try Again Later');
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
