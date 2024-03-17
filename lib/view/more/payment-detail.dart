import 'package:fhunger/common-widgets/Rounded-button.dart';
import 'package:fhunger/common-widgets/round-button.dart';
import 'package:fhunger/common/colors.dart';
import 'package:fhunger/view/more/add-card-view.dart';
import 'package:flutter/material.dart';

class PaymentDetail extends StatefulWidget {
  const PaymentDetail({super.key});

  @override
  State<PaymentDetail> createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  List cardArr = [
    {'icon': 'assets/images/visa_icon.png', 'card': '**** **** **** 5453'}
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios)),
                const Expanded(
                  child: Text(
                    'Payment Details',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
                  ),
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    size: 25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Text(
                'Customize your payment method',
                style: TextStyle(
                  fontSize: 16,
                  color: TColor.primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                child: Divider(
                  height: 1,
                  color: TColor.secondaryText.withOpacity(0.4),
                )),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                  color: TColor.textField,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 9))
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cash/Card on Delivery',
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                          ),
                        ),
                        Image.asset(
                          'assets/images/check.png',
                          width: 20,
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                      height: 1,
                    ),
                  ),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: cardArr.length,
                      itemBuilder: (context, index) {
                        var cObj = cardArr[index] as Map? ?? {};
                        return Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 35, vertical: 35),
                          child: Row(
                            children: [
                              Image.asset(
                                cObj['icon'].toString(),
                                width: 50,
                                height: 35,
                                fit: BoxFit.contain,
                              ),
                              const SizedBox(height: 15),
                              Expanded(
                                child: Text(
                                  cObj['card'].toString(),
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: TColor.secondaryText,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              SizedBox(
                                width: 100,
                                height: 28,
                                child: RoundedButton(
                                  title: 'Delete Card',
                                  fontSize: 12,
                                  onPressed: () {},
                                  type: RoundButtonType.textPrimary,
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Divider(
                      color: TColor.secondaryText.withOpacity(0.4),
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 35),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Other Methods",
                          style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 35),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: RoundIconButton(
                  color: TColor.primaryColor,
                  fontSize: 16,
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  title: 'Add another Debit/Credit card',
                  onPressed: () {
                    showModalBottomSheet(
                        isScrollControlled: true,
                         // backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) => const AddCardView());
                  },
                )),
          ]),
        ),
      ),
    );
  }
}
