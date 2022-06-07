import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/not_found_route_controller.dart';

class NotFoundRouteView extends GetView<NotFoundRouteController> {
  const NotFoundRouteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NotFoundRouteView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NotFoundRouteView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
