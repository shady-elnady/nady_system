import 'package:get/get.dart';

import '../../../Data/Repository/user_repository.dart';

class HomeController extends GetxController {
  final UserRepository repository;
  HomeController({required this.repository});
}
