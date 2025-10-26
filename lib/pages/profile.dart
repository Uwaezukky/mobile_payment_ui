import 'package:flutter/material.dart';
import 'package:mobile_payment/widgets/profile_button.dart';
import 'package:mobile_payment/widgets/profile_drawer.dart';
import 'package:mobile_payment/widgets/profile_text_button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 12, right: 12, top: 25),
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                width: MediaQuery.of(context).size.width,
                height: 230,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffe2e4f9),
                      offset: Offset.zero,
                      blurRadius: 6,
                      spreadRadius: 0.9,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/Elsa.png', scale: 1.5),
                        SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 110,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Zukky',
                                      style: TextStyle(
                                        fontFamily: 'Spartan',
                                        fontWeight: FontWeight.w800,
                                        fontSize: 25,
                                        color: Color(0xff616161),
                                        letterSpacing: 0,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/images/medal.png',
                                      scale: 1.5,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 1),
                              Text(
                                'Level 4 Ace Member',
                                style: TextStyle(
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff616161),
                                ),
                              ),
                              SizedBox(height: 1),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50.0),
                                    child: Text(
                                      '85%',
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 8,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/images/scale.png',
                                        scale: 1.7,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          left: 5.0,
                                        ),
                                        child: Text(
                                          'Lv5',
                                          style: TextStyle(
                                            fontFamily: 'Nunito',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfileTextButton(
                            number: '1,208',
                            text: 'Transactions',
                          ),
                          ProfileTextButton(number: '657', text: 'Points'),
                          ProfileTextButton(number: '5', text: 'Rank'),
                          ProfileButton(
                            buttonText: 'Explore',
                            icon: 'assets/images/next.png',
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProfileButton(
                          buttonText: 'Edit Profile',
                          icon: 'assets/images/profiley.png',
                        ),
                        ProfileButton(
                          buttonText: 'Settings',
                          icon: 'assets/images/settings.png',
                        ),
                        ProfileButton(
                          buttonText: 'Share',
                          icon: 'assets/images/share.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileDrawer(image: 'receipt', text: 'All Transactions'),
                    ProfileDrawer(
                      image: 'Caution',
                      text: 'Pending Transactions',
                    ),
                    ProfileDrawer(image: 'clock', text: 'Refund Status'),
                    ProfileDrawer(image: 'bewaree', text: 'Raise an issue'),
                    ProfileDrawer(image: 'heart1', text: 'Help and Support'),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProfileDrawer(image: 'Caution', text: 'About Us'),
                    ProfileDrawer(image: 'clock', text: 'Terms and Conditions'),
                    ProfileDrawer(image: 'bewaree', text: 'Feedback'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
