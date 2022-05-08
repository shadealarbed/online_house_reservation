import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/theme/color.dart';
import 'package:onlline_room_reservation/widgets/custom_image.dart';

class RecentItems extends StatelessWidget {
  final data;

  RecentItems({Key? key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Color(0xFF71717a),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          CustomeImage(
            data["image"],
            radius: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data["name"],
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Color(0xffe4e4e7)),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.place_outlined,
                      size: 13,
                      color: Color(0xffd4d4d8),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Expanded(
                        child: Text(
                      data["location"],
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xffd4d4d8),
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  data["price"],
                  style: TextStyle(
                      fontSize: 13,
                      color: third,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
