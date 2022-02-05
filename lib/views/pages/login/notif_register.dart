import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NotifRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SafeArea(
        child: Container(
          width: Get.width,
          height: Get.height,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/koperasi.png", scale: 2),
              Text("Koperasi Pallawa Lipu"),
              SizedBox(height: 20),
              Icon(
                Icons.check_circle,
                color: Colors.green[700],
                size: 70,
              ),
              Text("Pendaftaran Berhasil"),
              Container(
                width: Get.width,
                child: MaterialButton(
                  color: Colors.green[700],
                  onPressed: () {},
                  child: Text(
                    "Check PDF",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                width: Get.width,
                child: MaterialButton(
                  color: Colors.green[700],
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Kembali",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
