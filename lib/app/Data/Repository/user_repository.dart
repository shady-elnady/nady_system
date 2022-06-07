import '../Providers/user_provider.dart';

class UserRepository {
  final UserProvider userProvider;

  UserRepository({required this.userProvider});

  getId(id) {
    return userProvider.getUser(id);
  }

  delete(id) {
    return userProvider.deleteUser(id);
  }
}
