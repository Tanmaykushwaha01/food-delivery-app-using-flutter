import 'package:fhunger/common-widgets/tab-button.dart';
import 'package:fhunger/common/colors.dart';
import 'package:fhunger/view/home/home-view.dart';
import 'package:fhunger/view/menu/menu-view.dart';
import 'package:fhunger/view/offer/offer-view.dart';
import 'package:flutter/material.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({super.key});

  @override
  State<MainTabView> createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  PageStorageBucket storageBucket = PageStorageBucket();
  Widget selectPageView = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: storageBucket, child: selectPageView),
      backgroundColor: const Color(0xfff5f5f5),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 60,
        height: 60,
        child: FloatingActionButton(
          onPressed: () {
            if (selectTab != 2) {
              selectTab = 2;
              selectPageView = const HomeView();
            }
            if (mounted) {
              setState(() {});
            }
          },
          shape: const CircleBorder(),
          backgroundColor:
              selectTab == 2 ? TColor.primaryColor : TColor.placeholder,
          child: const Icon(
            Icons.home,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        surfaceTintColor: TColor.white,
        shadowColor: Colors.black,
        elevation: 1,
        notchMargin: 12,
        color: TColor.white,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                  onTap: () {
                    if (selectTab != 0) {
                      selectTab = 0;
                      selectPageView = const MenuView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: 'Menu',
                  icons: const Icon(Icons.restaurant_menu,),
                  isSelected: selectTab == 0),
              TabButton(
                  onTap: () {
                    if (selectTab != 1) {
                      selectTab = 1;
                      selectPageView = const OfferView();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: 'Offer',
                  icons: const Icon(Icons.local_offer),
                  isSelected: selectTab == 0),
              const SizedBox(width: 30, height: 40,),
              TabButton(
                  onTap: () {
                    if (selectTab != 2) {
                      selectTab = 2;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: 'Profile',
                  icons: const Icon(Icons.person),
                  isSelected: selectTab == 0),
              TabButton(
                  onTap: () {
                    if (selectTab != 3) {
                      selectTab = 3;
                      selectPageView = Container();
                    }
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  title: 'Menu',
                  icons: const Icon(Icons.menu),
                  isSelected: selectTab == 0),

            ],
          ),
        ),
      ),
//       bottomNavigationBar: BottomAppBar(
//         // color: Colors.black12,
//         shadowColor: Colors.black,
//         surfaceTintColor: Colors.black,
//         elevation: 5,
//         notchMargin: 10,
//         height: 74,
//         shape: const CircularNotchedRectangle(),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             TabButton(
//                 onTap: () {
//                   if (selectTab != 0) {
//                     selectTab = 0;
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeView()));
//                   }
//                   if (mounted) {
//                     setState(() {});
//                   }
//                 },
//                 title: 'Home',
//                 icons: Icon(Icons.home, color: selectTab == 0 ? Colors.red : Colors.grey,),
//                 isSelected: selectTab == 0),
//             TabButton(
//                 onTap: () {
//                   if (selectTab != 1) {
//                     selectTab = 1;
//                   }
//                   if (mounted) {
//                     setState(() {});
//                   }
//                 },
//                 title: 'Favorites',
//                 icons: Icon(Icons.favorite, color: selectTab == 1 ? Colors.red : Colors.grey,),
//                 isSelected: selectTab == 1),
//             TabButton(
//                 onTap: () {
//                   if (selectTab != 2) {
//                     selectTab = 2;
//                   }
//                   if (mounted) {
//                     setState(() {});
//                   }
//                 },
//                 title: 'Cart',
//                 icons: Icon(Icons.shopping_bag, color: selectTab == 2 ? Colors.red : Colors.grey,),
//                 isSelected: selectTab == 2),
// TabButton(
//                 onTap: () {
//                   if (selectTab != 3) {
//                     selectTab = 3;
//                   }
//                   if (mounted) {
//                     setState(() {});
//                   }
//                 },
//                 title: 'Notification',
//                 icons: Icon(Icons.notifications, color: selectTab == 3 ? Colors.red : Colors.grey,),
//                 isSelected: selectTab == 3),
//
//           ],
//         ),
//       ),
    );
  }
}
