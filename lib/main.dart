import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:koperasi/views/pages/login/login.dart';

import 'views/pages/login/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Login(),
    );
  }
}
