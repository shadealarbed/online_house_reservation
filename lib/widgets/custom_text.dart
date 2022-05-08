import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/theme/color.dart';

class CustomTextBox extends StatelessWidget {
  const CustomTextBox(
      {Key? key,
      this.hint,
      this.prefix,
      this.suffix,
      this.readOnly = false,
      this.controller});

  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final bool readOnly;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(.3),
      height: 40,
      decoration: BoxDecoration(
        color: textBoxColor,
        border: Border.all(color: textBoxColor),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            spreadRadius: .5,
            blurRadius: .5,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        readOnly: readOnly,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefix,
          suffixIcon:suffix,
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15)),
      ),
    );
  }
}
