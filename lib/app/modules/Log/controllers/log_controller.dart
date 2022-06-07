// ignore_for_file: unnecessary_overrides, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:nady_system/app/routes/app_pages.dart';

class LogController extends GetxController {
  //AuthController.intsance..
  // static LogController instance = Get.find();
  //email, password, name...
  late Rx<User?> _user;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // bool _isRememberMe = false;
  // bool get isRememberMe => _isRememberMe;
  // set isRememberMe(bool value) {
  //   _isRememberMe = value;
  //   update();
  // }

  // bool _isSignupScreen = false;
  // bool get isSignupScreen => _isSignupScreen;
  // set isSignupScreen(bool value) {
  //   _isSignupScreen = value;
  //   update();
  // }

  // bool _isMale = true;
  // bool get isMale => _isMale;
  // set isMale(bool value) {
  //   _isMale = value;
  //   update();
  // }

  // bool _logStatus = false;
  // bool get logStatus => _logStatus;
  // set logStatus(bool value) {
  //   _logStatus = value;
  //   update();
  // }

  // bool _showShadow = false;
  // bool get showShadow => _showShadow;
  // set showShadow(bool value) {
  //   _showShadow = value;
  //   update();
  // }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    // _user = Rx<User?>(_auth.currentUser);
    // //our user would be notified
    // _user.bindStream(_auth.userChanges());
    // ever(_user, _initialScreen);
  }

  _initialScreen(User? user) {
    if (user == null) {
      print("login page");
      Get.offAllNamed(Routes.LOG);
    } else {
      Get.offAllNamed(Routes.SPLASH);
    }
  }

  void register(String email, password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar(
        "About User",
        "User message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Account creation failed",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      );
    }
  }

  Future<bool> login(String email, password) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return true;
    } catch (e) {
      Get.snackbar(
        "About Login",
        "Login message",
        backgroundColor: Colors.redAccent,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Login failed",
          style: TextStyle(color: Colors.white),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(color: Colors.white),
        ),
      );
      return false;
    }
  }

  void logOut() async {
    await _auth.signOut();
  }
}
