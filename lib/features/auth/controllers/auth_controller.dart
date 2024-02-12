import 'package:dambu_store_app/data/repositories/auth_repositories/auth_repo.dart';
import 'package:dambu_store_app/features/auth/models/auth_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  static AuthController get instance => Get.find();

  final firstNameController = TextEditingController();
  final lastNameNameController = TextEditingController();
  final otherNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  //Register User API Method Call Here
  void registerNewUser(BuildContext context) async {
    //Set Loading First

    //Form Validation Then
    if (formKey.currentState!.validate()) return;

    //Register User Repo Call Here

    await AuthRepo.instance.registerUserRepo(
        AuthModel(
            firstName: firstNameController.text,
            lastName:   lastNameNameController.text,
            otherName:   otherNameController.text,
            email:   emailController.text,
            phoneNumber:   phoneNumberController.text,
            address:  addressController.text,
            password:   passwordController.text),
        context);
  }

  //Login User API Method Call Here

  void loginUser(BuildContext context) async {
    //Set Loading First

    //Form Validation Then
    if (formKey.currentState!.validate()) return;

    //Register User Repo Call Here

    await AuthRepo.instance.loginUserRepo(
      AuthModel(
        email: emailController.text,
        password: passwordController.text,
      ),context

    );



  }

  //Forgot Password API Method Call Here

  void forgotUserPassword(BuildContext context) async {
    //Set Loading First

    //Form Validation Then
    if (formKey.currentState!.validate()) return;

    //Register User Repo Call Here

    await AuthRepo.instance.forgotUserPasswordRepo(
    AuthModel(email: emailController.text),  context);



  }

}
