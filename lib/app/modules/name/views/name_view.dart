import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/name_controller.dart';

class NameView extends GetView<NameController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NameView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NameView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
