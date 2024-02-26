// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:dambu_store_app/common/styles/app_style.dart';
import 'package:dambu_store_app/features/auth/controllers/auth_controller.dart';
import 'package:dambu_store_app/features/auth/views/widgets/custom_button.dart';
import 'package:dambu_store_app/utils/constants/app_colors.dart';
import 'package:dambu_store_app/utils/constants/app_images.dart';
import 'package:dambu_store_app/utils/constants/app_sizes.dart';
import 'package:dambu_store_app/utils/constants/app_text.dart';
import 'package:dambu_store_app/utils/constants/app_utils/form_validators.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../widgets/form_fields.dart';
import '../widgets/social_options.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSizes.heightBetweenWidgets,
                ),
                Text(
                  AppText.registerAccount,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(
                  height: AppSizes.heightBetweenWidgets,
                ),
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: FormFields(
                              controller: controller.firstNameController,
                              hintText: 'Fist Name',
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'OtherName Required';
                                }
                                return null;
                              },
                              prefix: Icon(Icons.person),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: FormFields(
                              controller: controller.lastNameNameController,
                              hintText: 'Last Name',
                              keyboardType: TextInputType.text,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'OtherName Required';
                                }
                                return null;
                              },
                              prefix: Icon(Icons.person),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppSizes.heightBetweenWidgets,
                      ),
                      FormFields(
                        controller: controller.otherNameController,
                        hintText: 'Other Name',
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'OtherName Required';
                          }
                          return null;
                        },
                        prefix: Icon(Icons.person),
                      ),
                      SizedBox(
                        height: AppSizes.heightBetweenWidgets,
                      ),
                      FormFields(
                        controller: controller.emailController,
                        hintText: 'Email',
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          RegExp emailRegExp = RegExp(
                              r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

                          if (value == null || value.isEmpty) {
                            return 'Email can\'t be empty';
                          } else if (!emailRegExp.hasMatch(value)) {
                            return 'Enter a correct email';
                          }
                          return null;
                        },
                        prefix: Icon(Icons.mail),
                      ),
                      SizedBox(
                        height: AppSizes.heightBetweenWidgets,
                      ),
                      FormFields(
                        controller: controller.phoneNumberController,
                        hintText: 'Phone Number',
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Phone Number Required';
                          }
                          return null;
                        },
                        prefix: Icon(Icons.phone),
                      ),
                      SizedBox(
                        height: AppSizes.heightBetweenWidgets,
                      ),
                      FormFields(
                        controller: controller.addressController,
                        hintText: 'Address',
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Address Required';
                          }
                          return null;
                        },
                        prefix: Icon(Icons.home_work),
                      ),
                      SizedBox(
                        height: AppSizes.heightBetweenWidgets,
                      ),
                      FormFields(
                        controller: controller.passwordController,
                        hintText: 'Password',
                        keyboardType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is Required';
                          }
                          return null;
                        },
                        prefix: Icon(Icons.lock_outline),
                        suffix: Icon(Icons.remove_red_eye),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      CustomButton(
                          text: 'Create Account',
                          onPress: () => controller.registerNewUser(context))
                    ],
                  ),
                ),
                SizedBox(
                  height: AppSizes.heightBetweenWidgets,

                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColors.primaryColor,

                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      AppText.loginVia,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 1,
                        color: AppColors.primaryColor,

                      
                      ),
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialOptions(
                      onTap: (){
                        print('Google');
                      },
                      imagePath: AppImage.googleLogo,),
                    SizedBox(
                      width: 15,
                    ),
                    SocialOptions(
                        onTap: (){
                          print('Facebook');
                        },
                        imagePath: AppImage.facebookLogo),
                    SizedBox(
                      width: 15,
                    ),
                    SocialOptions(
                      onTap: (){
                        print('Twitter');
                      },
                      imagePath: AppImage.twitterLogo,)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

