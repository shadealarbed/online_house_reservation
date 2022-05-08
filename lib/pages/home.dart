import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlline_room_reservation/theme/color.dart';
import 'package:onlline_room_reservation/utils/utils.dart';
import 'package:onlline_room_reservation/widgets/RecommendedItem.dart';
import 'package:onlline_room_reservation/widgets/custom_image.dart';
import 'package:onlline_room_reservation/widgets/custom_text.dart';
import 'package:onlline_room_reservation/widgets/iconBox.dart';
import 'package:onlline_room_reservation/widgets/catagory_item.dart';
import 'package:onlline_room_reservation/widgets/propertyItem.dart';
import 'package:onlline_room_reservation/widgets/recentItems.dart';

class HomePage extends StatefulWidget {
  static final String id = "HomePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: themes,
          pinned: true,
          snap: true,
          floating: true,
          title: getTitle(),
          expandedHeight: 100,
        ),
        SliverToBoxAdapter(child: getBody())
      ],
    );
  }

  getTitle() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello!",
                    style: TextStyle(
                        color: Color(0xFFd4d4d8),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Chadi",
                    style: TextStyle(
                        color: Color(0xFFa1a1aa),
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              CustomeImage(
                profile,
                width: 35,
                height: 35,
                trBackground: true,
                borderColor: primary,
                radius: 10,
              ),
            ],
          )
        ],
      ),
    );
  }

  getBody() {
    return SingleChildScrollView(
        child: Column(children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Expanded(
                    child: CustomTextBox(
                  hint: "Search",
                  prefix: Icon(Icons.search, color: Colors.grey),
                )),
                SizedBox(
                  width: 10,
                ),
                IconBox(
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(Icons.filter_list_rounded)),
                  bgColor: third,
                  radius: 10,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 0),
            child: listCategories(),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFFe4e4e7),
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 14, color: Color(0xFFd4d4d8)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          listPopulars(),
          SizedBox(
            height: 20,
          ),
          lsitRecommanded(),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffd4d4d8)),
                ),
                Text(
                  "See all",
                  style: TextStyle(fontSize: 14, color: Color(0xffd4d4d8)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          listRecent(),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    ]));
  }

  int selectedCategory = 0;

  listCategories() {
    List<Widget> lists = List.generate(
        categories.length,
        (index) => CategoryItem(
              data: categories[index],
              selected: index == selectedCategory,
              onTap: () {
                setState(() {
                  selectedCategory = index;
                });
              },
            ));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 5, left: 15),
      child: Row(children: lists),
    );
  }

  listPopulars() {
    return CarouselSlider(
        options: CarouselOptions(
          height: 240,
          enlargeCenterPage: true,
          disableCenter: true,
          viewportFraction: .8,
        ),
        items: List.generate(
            populars.length,
            (index) => PropertyItem(
                  data: populars[index],
                  selected: false,
                )));
  }

  lsitRecommanded() {
    List<Widget> list = List.generate(
        recommended.length,
        (index) => RecommendedItem(
              data: recommended[index],
            ));
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(bottom: 5, left: 15),
      child: Row(
        children: list,
      ),
    );
  }
}

listRecent() {
  List<Widget> lists = List.generate(
      recents.length,
      (index) => RecentItems(
            data: recents[index],
          ));
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    padding: EdgeInsets.only(bottom: 5, left: 15),
    child: Row(children: lists),
  );
}
