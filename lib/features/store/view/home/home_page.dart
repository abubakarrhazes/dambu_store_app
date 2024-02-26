import 'package:dambu_store_app/features/store/controller/home_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomePageController());
    return Scaffold(
     bottomNavigationBar: Obx(
       () => NavigationBar(
         height: 80,
         elevation: 0,
         selectedIndex: controller.selectedIndex.value,
         onDestinationSelected: (index) => controller.selectedIndex.value = index,
         destinations: const [
           NavigationDestination(icon: Icon(Icons.apps), label: 'Home'),
           NavigationDestination(icon: Icon(Icons.storefront_outlined), label: 'Store'),
           NavigationDestination(icon: Icon(Icons.favorite_border_outlined), label: 'Wishlist'),
           NavigationDestination(icon: Icon(Icons.person), label: 'Home'),



         ],
       ),
     ),
      body: Obx(() => controller.screens[controller.selectedIndex.value],),
    );
  }
}
