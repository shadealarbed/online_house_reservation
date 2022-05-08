import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/theme/color.dart';

import 'iconBox.dart';

class favoriteIcone extends StatefulWidget {
  final GestureTapCallback? onTap;
  bool select;
  final data;
  favoriteIcone({Key? key, this.onTap,this.select=false, this.data}) : super(key: key);

  @override
  _favoriteIconeState createState() => _favoriteIconeState();
}

class _favoriteIconeState extends State<favoriteIcone> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){setState(() {
        widget.select = !widget.select;

      });},
      child: IconBox(
        child: Icon(
           widget.select==true? Icons.favorite : Icons.favorite_border,
          color: Colors.white,
          size: 20,
        ),
        bgColor: red,
      ),
    );
  }
}
