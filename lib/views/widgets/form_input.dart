import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget formText(String textLabel, String textHint, int mode) {
  return Container(
    width: Get.width,
    margin: EdgeInsets.only(bottom: 7),
    child: TextFormField(
      maxLines: (mode == 1) ? 1 : 4,
      minLines: 1,
      textAlignVertical: TextAlignVertical.top,
      decoration: InputDecoration(
        hintText: textHint,
        labelText: textLabel,
        prefixIcon: Padding(
          padding: EdgeInsets.all(0.0),
          child: Icon(
            Icons.ac_unit,
            color: Colors.green[700],
          ), // icon is 48px widget.
        ),
      ),
    ),
  );
}
