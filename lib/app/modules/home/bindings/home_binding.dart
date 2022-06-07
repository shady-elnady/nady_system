import 'package:get/get.dart';

import '../../../Data/Providers/user_provider.dart';
import '../../../Data/Repository/user_repository.dart';
import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(
        repository: UserRepository(
          userProvider: UserProvider(),
        ),
      ),
    );
  }
}
