import 'package:fhunger/common-widgets/most-popular-cell.dart';
import 'package:fhunger/common-widgets/popular-restaurants-row.dart';
import 'package:fhunger/common-widgets/recent-item-cell.dart';
import 'package:fhunger/common-widgets/round-textfield.dart';
import 'package:fhunger/common-widgets/view-all.dart';
import 'package:fhunger/common/colors.dart';
import 'package:flutter/material.dart';

import '../../common-widgets/category-cell.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // void _clearSearch() {
  //   return setState(() {
  //     txtSearch.clear();
  //   });
  // }

  List catArr = [
    {"image": "assets/images/chole.png", "name": "Offers"},
    {"image": "assets/images/salad.png", "name": "Sri Lankan"},
    {"image": "assets/images/chole.png", "name": "Italian"},
    {"image": "assets/images/salad.png", "name": "Indian"},
  ];

  List popArr = [
    {
      "image": "assets/images/highprotienfood.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/momo.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/highprotienfood.png",
      "name": "Bakes by Tella",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/momo.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/images/breakfast.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/breakfast2.png",
      "name": "Café de Noir",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  List recentArr = [
    {
      "image": "assets/images/omlete.png",
      "name": "Mulberry Pizza by Josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/omlete.png",
      "name": "Barita",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/omlete.png",
      "name": "Pizza Rush Hour",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },{
      "image": "assets/images/omlete.png",
      "name": "Mulberry Pizza by Josh",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
    {
      "image": "assets/images/omlete.png",
      "name": "Barita",
      "rate": "4.9",
      "rating": "124",
      "type": "Cafa",
      "food_type": "Western Food"
    },
  ];

  TextEditingController txtSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfffEfEfE),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Good Morning, Tanmay',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.shopping_cart, size: 25,))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivering to",
                        style: TextStyle(
                            fontSize: 11, color: TColor.secondaryText),
                      ),
                      Row(
                        children: [
                          Text(
                            "Current Location",
                            style: TextStyle(
                                fontSize: 16, color: TColor.secondaryText, fontWeight: FontWeight.w700),
                          ),

                          IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      RoundTextfield(
                        hintText: 'Search Food',
                        controller: txtSearch,
                        left: const Icon(Icons.search),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: catArr.length,
                            itemBuilder: ((context, index) {
                              var cObj = catArr[index] as Map? ?? {};
                              return CategoryCell(
                                onTap: () {},
                                cObj: cObj,
                              );
                            })),
                      ),
                      ViewAllTileRow(
                        title: 'Popular Restaurant',
                        onView: () {},
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: popArr.length,
                          itemBuilder: ((context, index) {
                            var pObj = popArr[index] as Map? ?? {};
                            return PopularRestaurantRow(
                              onTap: () {},
                              pObj: pObj,
                            );
                          })),
                      ViewAllTileRow(
                        title: 'Most Popular',
                        onView: () {},
                      ),
                      SizedBox(
                        height: 185,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: mostPopArr.length,
                            itemBuilder: ((context, index) {
                              var mObj = mostPopArr[index] as Map? ?? {};
                              return MostPopularCell(
                                onTap: () {},
                                mObj: mObj,
                              );
                            })),
                      ),
                      ViewAllTileRow(
                        title: 'Recent Items',
                        onView: () {},
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: recentArr.length,
                          itemBuilder: ((context, index) {
                            var rObj = recentArr[index] as Map? ?? {};
                            return RecentItemRow(
                              onTap: () {},
                              rObj: rObj,
                            );
                          })),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
// SingleChildScrollView(
// child: Padding(
// padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
// child: Column(
// children: [
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// const Row(
// children: [
// Icon(
// Icons.location_on_outlined,
// size: 35,
// ),
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Text(
// 'Your Location',
// style: TextStyle(
// color: Colors.red,
// fontSize: 17,
// ),
// ),
// Icon(Icons.keyboard_arrow_down_rounded),
// ],
// ),
// Text(
// 'St. Louis, Mussouri (2mi)',
// style: TextStyle(color: Colors.red, fontSize: 14),
// ),
// ],
// )
// ],
// ),
// ClipRRect(
// borderRadius: BorderRadius.circular(100),
// child: Image.asset(
// 'assets/images/man.jpg',
// scale: 4,
// )),
// ],
// ),
// const SizedBox(
// height: 20,
// ),
// TextField(
// controller: searchController,
// onChanged: _searchOnEnter,
// decoration: InputDecoration(
// border: OutlineInputBorder(
// borderRadius: BorderRadius.circular(25),
// borderSide: const BorderSide(
// color: Colors.black,
// width: 1,
// )
// ),
// fillColor: Colors.black12,
// filled: true,
// contentPadding: const EdgeInsets.symmetric(horizontal: 20),
// hintText: 'Search Dishes',
// prefixIcon: const Icon(Icons.search),
// suffixIcon: IconButton(
// icon: const Icon(Icons.clear),
// onPressed: () {
// _clearSearch();
// },
// )),
// ),
//
// ],
// ),
// )),
