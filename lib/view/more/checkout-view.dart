import 'package:fhunger/common-widgets/Rounded-button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../common/colors.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  List paymentArr = [
    {"name": "Cash on delivery", "icon": "assets/images/cash.png"},
    {"name": "**** **** **** 2187", "icon": "assets/images/visa_icon.png"},
    {"name": "test@gmail.com", "icon": "assets/images/paypal.png"},
  ];

  int selectMethod = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios, size: 20),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      textAlign: TextAlign.start,
                      'Delivery Address',
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "653 Nostrand Ave.\nBrooklyn, NY 11216",
                        style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Change',
                            style: TextStyle(color: TColor.primaryColor),
                          ))
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(color: TColor.textField),
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          'Payment method',
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                          ),
                        ),
                        TextButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              color: TColor.primaryColor,
                            ),
                            label: Text(
                              'Add Card',
                              style: TextStyle(color: TColor.primaryColor),
                            ))
                      ],
                    ),
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: paymentArr.length,
                      itemBuilder: (context, index) {
                        var imgObj = paymentArr[index] as Map? ?? {};
                        return Container(
                          height: 60,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          decoration: BoxDecoration(
                              color: TColor.textField,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                  color:
                                      TColor.secondaryText.withOpacity(0.2))),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(imgObj['icon'].toString()),
                              ),
                              Expanded(
                                child: Text(
                                  imgObj['name'].toString(),
                                  style: TextStyle(color: TColor.primaryText),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    selectMethod = index;
                                  });
                                },
                                child: Icon(
                                  selectMethod == index
                                      ? Icons.radio_button_on
                                      : Icons.radio_button_off,
                                  color: TColor.primaryColor,
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(color: TColor.textField),
                    height: 8,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Sub Total',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: TColor.primaryText),
                        ),
                        const Text(
                          '\$68',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery Charges',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: TColor.primaryText),
                        ),
                        const Text(
                          '\$2',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: TColor.primaryText),
                        ),
                        const Text(
                          '-\$4',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                      height: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: TColor.primaryText),
                          ),
                          const Text(
                            '\$66',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(color: TColor.textField),
                height: 8,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  child: RoundedButton(
                      title: 'Send Order',
                      onPressed: () {
                        //     showModalBottomSheet(context: context, builder: (context) => const CheckoutMessageView());
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
