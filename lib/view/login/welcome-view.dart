import 'package:fhunger/common-widgets/rectangle-button.dart';
import 'package:fhunger/common/colors.dart';
import 'package:fhunger/view/login/login-view.dart';
import 'package:flutter/material.dart';

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
      'title': 'Fun with Hunger',
      'subtitle': 'Explore the Flavour and deals. \n Multiple ways to order',
      'image': 'assets/images/handbags.jpg'
    },
    {
      'title': 'Simple Steps',
      'subtitle':
          ' 1. Add items to your cart. \n 2. Quote for large order, if applicable \n 3. Pay in the app.',
      'image': 'assets/images/mobile.png'
    },
    {
      'title': 'Pick up & Have Fun with Hunger',
      'subtitle': 'Create your Fhunger profile for \n rewards and deals.',
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
              color: primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
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
          height: 70,
        ),
        Expanded(
          child: PageView.builder(
              scrollDirection: Axis.horizontal,
              controller: controller,
              itemCount: pageArr.length,
              itemBuilder: (context, index) {
                var pObj = pageArr[index] as Map? ?? {};
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: media.width,
                      constraints: const BoxConstraints(maxHeight: 250, minHeight: 250,),
                      alignment: Alignment.center,
                      child: Image.asset(
                        pObj['image'].toString(),
                        width: media.width * 0.6,
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
                    const SizedBox(height: 8,),
                    Text(
                      pObj['subtitle'].toString(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                );
              }),
        ),
        // Image.asset(
        //   'assets/images/handbags.jpg',
        //   height: 220,
        // ),

        const SizedBox(
          height: 70,
        ),
        RectangleButton(
          title: 'Get Started',
          fontColor: Colors.white,
          buttonColor: primaryColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const LoginView()));
          },
        )
      ],
    ));
  }
}
