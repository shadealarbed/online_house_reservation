import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/theme/color.dart';
import 'package:onlline_room_reservation/widgets/favoriteIcon.dart';

import 'custom_image.dart';
import 'iconBox.dart';

class PropertyItem extends StatelessWidget {
  final data;
  final GestureTapCallback? onTap;
  final bool selected;


  const PropertyItem({Key? key, required this.data, this.onTap, this.selected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 5),
      decoration: BoxDecoration(
        color: Color(0xFF71717a),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: .5,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomeImage(
            data["image"],
            radius: 25,
            width: double.infinity,
            height: 150,
          ),
          Positioned(
              right: 20,
              top: 130,
              child: favoriteIcone()),
          Positioned(
              left: 15,
              top: 160,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data["name"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.place_outlined,
                        color: Colors.white70,
                        size: 13,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        data["location"],
                        style: TextStyle(fontSize: 13, color: Colors.white70),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    data["price"],
                    style: TextStyle(
                        fontSize: 15,
                        color: third,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
