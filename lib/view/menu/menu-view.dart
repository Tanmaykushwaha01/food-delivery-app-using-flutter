import 'package:fhunger/view/menu/menu-item-view.dart';
import 'package:flutter/material.dart';

import '../../common-widgets/round-textfield.dart';
import '../../common/colors.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  List menuArr = [
    {
      "name": "Food",
      "image": "assets/images/omlete.png",
      "items_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/images/salad.png",
      "items_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/images/omlete.png",
      "items_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/images/salad.png",
      "items_count": "25",
    },
  ];
  TextEditingController txtSearch = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 155),
            height: MediaQuery.of(context).size.height * .6,
            width: MediaQuery.of(context).size.width * .27,
            decoration: BoxDecoration(
                color: TColor.primaryColor,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(35),
                    bottomRight: Radius.circular(35))),
          ),
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Menu',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.shopping_cart,
                          size: 25,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: RoundTextfield(
                  hintText: 'Search Food',
                  controller: txtSearch,
                  left: const Icon(Icons.search),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  shrinkWrap: true,
                  itemCount: menuArr.length,
                  itemBuilder: (context, index) {
                    var mObj = menuArr[index] as Map? ?? {};
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuItemView(
                              mObj: mObj,
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.centerRight,
                          children: [
                          Container(
                            margin: const EdgeInsets.only(
                                top: 10, bottom: 10, right: 20),
                            width: MediaQuery.of(context).size.width - 100,
                            height: 90,
                            decoration: BoxDecoration(
                                color: TColor.white,
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(35),
                                    bottomLeft: Radius.circular(35),
                                    topRight: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Colors.black26,
                                      blurRadius: 7,
                                      offset: Offset(0, 4))
                                ]),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  mObj['image'].toString(),
                                  width: 80,
                                  height: 80,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      mObj['name'].toString(),
                                      style: TextStyle(
                                          color: TColor.primaryText,
                                          fontSize: 22,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    Text(
                                      '${mObj['items_count'].toString()} items',
                                      style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: TColor.white,
                                    borderRadius: BorderRadius.circular(17.5),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.black45,
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                      ),
                                    ]),
                                // alignment: Alignment.center,
                                child: Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  size: 30,
                                  color: TColor.primaryColor,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ]),
          )),
        ],
      ),
    );
  }
}
