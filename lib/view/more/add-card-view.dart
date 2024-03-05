import 'package:fhunger/common-widgets/round-button.dart';
import 'package:fhunger/common-widgets/round-textfield.dart';
import 'package:fhunger/common/colors.dart';
import 'package:flutter/material.dart';

class AddCardView extends StatefulWidget {
  const AddCardView({super.key});

  @override
  State<AddCardView> createState() => _AddCardViewState();
}

class _AddCardViewState extends State<AddCardView> {
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cardMonth = TextEditingController();
  TextEditingController cardYear = TextEditingController();
  TextEditingController cvv = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();
  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Add another Debit/Credit Card',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: TColor.primaryText),
              ),
              IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
          Divider(
            color: TColor.secondaryText.withOpacity(0.4),
            height: 1,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: 'Card Number',
            controller: cardNumber,
            bgColor: TColor.textField,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'Expiry',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: TColor.primaryText),
              ),
              const Spacer(),
              SizedBox(
                width: 80,
                child: RoundTextfield(
                  hintText: 'M M',
                  keyboardType: TextInputType.number,
                  controller: cardMonth,
                  bgColor: TColor.textField,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              SizedBox(
                width: 80,
                child: RoundTextfield(
                  hintText: 'Year',
                  keyboardType: TextInputType.number,
                  controller: cardYear,
                  bgColor: TColor.textField,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: 'Card Security Number',
            controller: cvv,
            bgColor: TColor.textField,
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: 'First Name',
            controller: firstName,
            bgColor: TColor.textField,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: 15,
          ),
          RoundTextfield(
            hintText: 'Last Name',
            controller: lastName,
            bgColor: TColor.textField,
            keyboardType: TextInputType.name,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'You can remove this card anytime',
                style: TextStyle(
                    fontWeight: FontWeight.w500, color: TColor.secondaryText),
              ),
              const Spacer(),
              Switch(
                  value: isAnyTime,
                  activeColor: TColor.primaryColor,
                  onChanged: (newVal) {
                    setState(() {
                      isAnyTime = newVal;
                    });
                  })
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          RoundIconButton(
              title: 'Add Card',
              icon: const Icon(
                Icons.credit_card,
                color: Colors.white,
              ),
              color: TColor.primaryColor,
              onPressed: () {}),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }
}
