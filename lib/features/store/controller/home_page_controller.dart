import 'package:dambu_store_app/features/store/view/home/main_screen/main_screen.dart';
import 'package:dambu_store_app/features/store/view/home/profile/profile.dart';
import 'package:dambu_store_app/features/store/view/home/shop/shop.dart';
import 'package:dambu_store_app/features/store/view/home/wish_list/wish_list.dart';
import 'package:get/get.dart';

class HomePageController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const MainScreen(),
    const Shop(),
    const WishList(),
    const Profile(),


  ];





}