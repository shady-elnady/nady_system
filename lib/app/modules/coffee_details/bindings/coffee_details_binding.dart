import 'package:get/get.dart';

import '../controllers/coffee_details_controller.dart';

class CoffeeDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoffeeDetailController>(
      () => CoffeeDetailController(),
    );
  }
}
