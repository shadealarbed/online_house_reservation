import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/theme/color.dart';
import 'package:onlline_room_reservation/widgets/bottombaritem.dart';

import 'explore.dart';
import 'home.dart';

class RootApp extends StatefulWidget {
  static final String id = "RootApp";

  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int Activetap = 0;
  List barItems = [
    {
      "icon": Icons.home_outlined,
      "active_icon": Icons.home_rounded,
      "page": HomePage(),
      "title": ""
    },
    {
      "icon": Icons.search_outlined,
      "active_icon": Icons.search,
      "page": ExplorePage(),
      "title": ""
    },
    {
      "icon": Icons.favorite_border,
      "active_icon": Icons.favorite_outlined,
      "page": HomePage(),
      "title": ""
    },
    {
      "icon": Icons.forum_outlined,
      "active_icon": Icons.forum_rounded,
      "page": HomePage(),
      "title": ""
    },
    {
      "icon": Icons.settings_outlined,
      "active_icon": Icons.settings_rounded,
      "page": HomePage(),
      "title": ""
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: getBarPage(),
      // bottomNavigationBar: getBottomBar1()
      floatingActionButton: getBottomBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }

  Widget getBarPage() {
    return IndexedStack(
        index: Activetap,
        children:
            List.generate(barItems.length, (index) => barItems[index]["page"]));
  }

  Widget getBottomBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 55,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
        decoration: BoxDecoration(
            color: themes,
            borderRadius: BorderRadius.circular(20),
            // borderRadius: BorderRadius.only(
            //   topLeft: Radius.circular(20),
            //   topRight: Radius.circular(20)
            // ),
            boxShadow: [
              BoxShadow(
                  color: shadowColor.withOpacity(0.1),
                  blurRadius: 1,
                  spreadRadius: 1,
                  offset: Offset(0, 1))
            ]),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: List.generate(
                barItems.length,
                (index) => BottomBarItem(
                      Activetap == index
                          ? barItems[index]["active_icon"]
                          : barItems[index]["icon"],
                      "",
                      isActive: Activetap == index,
                      activeColor: third,
                      onTap: () {
                        setState(() {
                          Activetap = index;
                        });
                      },
                    ))),
      ),
    );
  }
}
