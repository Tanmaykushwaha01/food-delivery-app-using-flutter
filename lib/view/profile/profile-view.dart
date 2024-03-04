import 'dart:io';

import 'package:fhunger/common-widgets/Rounded-button.dart';
import 'package:fhunger/common-widgets/round-textfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ImagePicker picker = ImagePicker();
  XFile? image;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtAdress = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w800),
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
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: TColor.secondaryText),
                    child: image != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.file(
                              File(image!.path),
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          )
                        : const Icon(
                            Icons.person,
                            size: 85,
                          ),
                  ),
                  TextButton.icon(
                      onPressed: () async {
                        image =
                            await picker.pickImage(source: ImageSource.gallery);
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.edit,
                        color: TColor.primaryColor,
                      ),
                      label: Text(
                        'Edit Profile',
                        style: TextStyle(
                            color: TColor.primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                      )),
                  Text(
                    'Hi, Tanmay Kushwaha',
                    style: TextStyle(
                        color: TColor.primaryColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Sign Out',
                          style: TextStyle(
                            color: TColor.secondaryText,
                            fontSize: 12,
                          ))),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTitleTextfield(
                      controller: txtName,
                      left: const Icon(Icons.person),
                      title: 'Name',
                      hintText: 'Enter Name',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTitleTextfield(
                      controller: txtEmail,
                      left: const Icon(Icons.email),
                      title: 'Email',
                      hintText: 'Enter your Email',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTitleTextfield(
                      controller: txtAdress,
                      left: const Icon(Icons.house),
                      title: 'Address',
                      hintText: 'Enter your Address',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTitleTextfield(
                      controller: txtPassword,
                      left: const Icon(Icons.lock),
                      title: 'Password',
                      hintText: '*******',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundTitleTextfield(
                      controller: txtConfirmPassword,
                      left: const Icon(Icons.lock),
                      title: 'Confirm Password',
                      hintText: '*******',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundedButton(
                      title: 'Save',
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ]))));
  }
}
