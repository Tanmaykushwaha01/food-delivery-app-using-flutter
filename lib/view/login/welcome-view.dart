import 'package:fhunger/common-widgets/rectangle-button.dart';
import 'package:fhunger/view/login/login-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  PageController controller = PageController();
  int selectPage = 0;

  List pageArr = [
    {
      "title": "Find Food You Love",
      "subtitle":
          "Discover the best foods from over 1,000\nrestaurants and fast delivery to your\ndoorstep",
      'image': 'assets/images/handbags.jpg'
    },
    {
      "title": "Fast Delivery",
      "subtitle": "Fast food delivery to your home, office\n wherever you are",
      'image': 'assets/images/mobile.png'
    },
    {
      "title": "Live Tracking",
      "subtitle":
          "Real time tracking of your food on the app\nonce you placed the order",
      'image': 'assets/images/handbags.jpg',
    },
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.floor() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        Container(
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              color: Color(0xffc22524),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.png',
                height: 50,
              ),
              const Text(
                'Fhunger',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Expanded(
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: media.width,
                      constraints: const BoxConstraints(
                        maxHeight: 250,
                        minHeight: 250,
                      ),
                      alignment: Alignment.center,
                      child: Image.asset(
                        pObj['image'].toString(),
                        width: media.width *  0.65,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      pObj['title'].toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      pObj['subtitle'].toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              }),
        ),
        const SizedBox(
          height: 60,
        ),
        SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const SwapEffect(
                activeDotColor: Colors.red, dotHeight: 8, dotWidth: 20)),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //     children: pageArr.map((e) {
        //       var index = pageArr.indexOf(e);
        //       return Container(
        //         height: 8,
        //         width: 8,
        //         margin: const EdgeInsets.symmetric(horizontal: 4),
        //         decoration: BoxDecoration(
        //           color: index == selectPage ? Colors.red : Colors.grey,
        //           borderRadius: BorderRadius.circular(4),
        //         ),
        //       );
        //     }).toList()),
        const SizedBox(
          height: 10,
        ),
        RectangleButton(
          title: 'Get Started',
          fontColor: Colors.black,
          buttonColor: Colors.yellow,
          onPressed: () {
            if (selectPage >= 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginView()));
            } else {
              setState(() {
                selectPage = selectPage + 1;
                controller.animateToPage(selectPage,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.fastOutSlowIn);
              });
            }
          },
        ),
        const SizedBox(
          height: 40,
        )
      ],
    ));
  }
}
