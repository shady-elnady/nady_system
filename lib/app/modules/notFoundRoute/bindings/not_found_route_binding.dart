import 'package:get/get.dart';

import '../controllers/not_found_route_controller.dart';

class NotFoundRouteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotFoundRouteController>(
      () => NotFoundRouteController(),
    );
  }
}
