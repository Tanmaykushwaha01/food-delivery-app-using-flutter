import 'package:fhunger/common-widgets/Rounded-button.dart';
import 'package:fhunger/common/colors.dart';
import 'package:fhunger/view/more/checkout-view.dart';
import 'package:flutter/material.dart';

class MyOrderView extends StatefulWidget {
  const MyOrderView({super.key});

  @override
  State<MyOrderView> createState() => _MyOrderViewState();
}

class _MyOrderViewState extends State<MyOrderView> {
  List itemArr = [
    {"name": "Beef Burger", "qty": "1", "price": 16.0},
    {"name": "Classic Burger", "qty": "1", "price": 14.0},
    {"name": "Cheese Chicken Burger", "qty": "1", "price": 17.0},
    {"name": "Chicken Legs Basket", "qty": "1", "price": 15.0},
    {"name": "French Fires Large", "qty": "1", "price": 6.0}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)),
                  const Expanded(
                    child: Text(
                      'My Order',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/chole.png',
                      height: 90,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Chole',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: TColor.primaryColor,
                            size: 12,
                          ),
                          Text(
                            '4.9',
                            style: TextStyle(color: TColor.primaryColor),
                          ),
                          const Text(' (124 Rating)'),
                        ],
                      ),
                      const Text(
                        'Burger Western food',
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: TColor.primaryColor,
                            size: 13,
                          ),
                          const Text(
                            'No.3, 4th lane New york',
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                decoration: BoxDecoration(
                  color: TColor.textField,
                ),
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Divider(
                    color: TColor.secondaryText.withOpacity(0.4),
                    indent: 4,
                    endIndent: 4,
                    thickness: 1,
                  ),
                  itemCount: itemArr.length,
                  itemBuilder: (context, index) {
                    var item = itemArr[index] as Map? ?? {};
                    return Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${item['name'].toString()} x${item['qty'].toString()}',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          '\$${item['price'].toString()}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Delivery Instruction',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      TextButton.icon(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: TColor.primaryColor,
                          ),
                          label: Text(
                            'Add Notes',
                            style: TextStyle(
                              color: TColor.primaryColor,
                            ),
                          )),
                    ],
                  ),
                  Divider(
                    color: TColor.secondaryText.withOpacity(0.4),
                    indent: 4,
                    endIndent: 4,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Subtotal',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$68",
                            style: TextStyle(
                                color: TColor.primaryColor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Delivery Charges',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$2",
                            style: TextStyle(
                                color: TColor.primaryColor,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    color: TColor.secondaryText.withOpacity(0.4),
                    indent: 15,
                    endIndent: 15,
                    thickness: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Total',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\$70",
                        style: TextStyle(
                            color: TColor.primaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.8,
                      child: RoundedButton(
                        title: 'Checkout',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CheckoutView()));
                        },
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
