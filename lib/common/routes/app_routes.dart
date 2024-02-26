import 'package:dambu_store_app/features/auth/views/forgot-password/forgot_password_screen.dart';
import 'package:dambu_store_app/features/auth/views/login/login_screen.dart';
import 'package:dambu_store_app/features/auth/views/onboard/onboard.dart';
import 'package:dambu_store_app/features/auth/views/register/register_screen.dart';
import 'package:dambu_store_app/features/auth/views/verify-email/verify_email_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppRoutes{
  static const initial = '/';

  static const registerScreen = '/register';
  static const loginScreen = '/login';
  static const forgotPasswordScreen = '/forgot';
  static const verifyEmail = '/verify';




  static List<GetPage> page = [
    GetPage(name: initial, page: () => const Onboard()),
    GetPage(name: registerScreen, page: () => const RegisterScreen()),
    GetPage(name: loginScreen, page: () => const LoginScreen()),
    GetPage(name: forgotPasswordScreen, page: () => const ForgotPassword() ),
    GetPage(name: verifyEmail, page: () => const VerifyEmailScreen()),





  ];











}