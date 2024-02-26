import 'package:dambu_store_app/data/repositories/auth_repositories/auth_repo.dart';
import 'package:get/get.dart';

class GeneralBindings extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(AuthRepo());
  }





}