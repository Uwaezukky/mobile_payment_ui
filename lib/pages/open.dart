import 'package:flutter/material.dart';
import 'package:mobile_payment/pages/balance_page.dart';
import 'package:mobile_payment/pages/offers_page.dart';
import 'package:mobile_payment/pages/profile.dart';
import 'package:mobile_payment/pages/rewards_page.dart';
import 'package:mobile_payment/widgets/icon_container.dart';
import 'package:mobile_payment/widgets/profile_row.dart';
import 'package:mobile_payment/widgets/reusable_button.dart';
import 'package:mobile_payment/widgets/text_row.dart';

class OpenPage extends StatelessWidget {
  const OpenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              clipBehavior: Clip.none,
              height: 170,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffe2e4f9),
                    offset: Offset.zero,
                    blurRadius: 7,
                    spreadRadius: 0.5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Profile(),
                              ),
                            );
                          },
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Opacity(
                                opacity: 0.2,
                                child: Image.asset(
                                  'assets/images/iconbackground.png',
                                  height: 53,
                                  width: 53,
                                  color: Color(0xff616161),
                                ),
                              ),
                              Positioned.fill(
                                child: Center(
                                  child: Image.asset(
                                    'assets/images/profile.png',
                                    width: 38,
                                    height: 38,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 230,
                          height: 45,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8,
                                //top: 3,
                                bottom: 5,
                              ),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search Users, ID, etc',
                                  hintStyle: TextStyle(
                                    fontFamily: 'Spartan',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff858891),
                                    fontSize: 15,
                                  ),
                                  suffixIcon: Image.asset(
                                    'assets/images/search.png',
                                    scale: 2,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 45,
                          height: 45,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0xffF5F5F5),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Image.asset(
                              'assets/images/notification.png',
                              scale: 2,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  TabBar(
                    //padding: EdgeInsets.only(right: 0, top: 0),
                    isScrollable: true,
                    tabAlignment: TabAlignment.center,
                    labelColor: Color(0xff4D5DFA),
                    indicatorWeight: 3,
                    indicatorColor: Color(0xff4D5DFA),
                    unselectedLabelColor: Color(0xff696D78),
                    dividerColor: Colors.transparent,
                    tabs: [
                      Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Balance',
                        style: TextStyle(
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Offers',
                        style: TextStyle(
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'Rewards',
                        style: TextStyle(
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  HomeTab(),
                  BalancePage(),
                  OffersPage(),
                  RewardsPage(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 15),
            child: TextRow(
              text: 'Money Transfer',
              text2: 'More',
              icon: 'assets/images/forward.png',
            ),
          ),
          SizedBox(height: 10),
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                  bottom: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableBtn(
                      icon: 'assets/images/Scanner.png',
                      color: Color(0xff0054D2),
                      text: 'Scan QR code',
                    ),
                    ReusableBtn(
                      icon: 'assets/images/adduser.png',
                      color: Color(0xff00D2D2),
                      text: 'Send to contact',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 15, right: 15, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableBtn(
                      icon: 'assets/images/bank.png',
                      color: Color(0xff70FF00),
                      text: 'Send to bank',
                    ),
                    ReusableBtn(
                      icon: 'assets/images/swap.png',
                      color: Color(0xffD200BD),
                      text: 'Send to bank',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20.0),
            child: TextRow(
              text: 'Recharge & Bill Payments',
              text2: 'More',
              icon: 'assets/images/forward.png',
            ),
          ),
          SizedBox(height: 10),
          Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15.0,
                  right: 15,
                  bottom: 3,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableBtn(
                      icon: 'assets/images/Iphone.png',
                      color: Color(0xff3BC4FF),
                      text: 'Mobile Recharge',
                    ),
                    ReusableBtn(
                      icon: 'assets/images/light.png',
                      color: Colors.orange,
                      text: 'Electricity Bill',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsGeometry.only(left: 15, right: 15, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableBtn(
                      icon: 'assets/images/Play.png',
                      color: Color(0xff70FF00),
                      text: 'DTH Recharge',
                    ),
                    ReusableBtn(
                      icon: 'assets/images/receipt.png',
                      color: Color(0xffD200BD),
                      text: 'Postpaid bill',
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: TextRow(text: 'Ticket Booking'),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconContainer(
                  color: Color(0xffFFEDF1),
                  text: 'Movies',
                  image: 'assets/images/video-play.png',
                ),
                IconContainer(
                  color: Color(0xffFFEDF1),
                  text: 'Train',
                  image: 'assets/images/train.png',
                ),
                IconContainer(
                  color: Color(0xffFFEDF1),
                  text: 'Bus',
                  image: 'assets/images/bus.png',
                ),
                IconContainer(
                  color: Color(0xffFFEDF1),
                  text: 'Flights',
                  image: 'assets/images/airplane.png',
                ),
                IconContainer(
                  color: Color(0xffFFEDF1),
                  text: 'Car',
                  image: 'assets/images/car.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: TextRow(text: 'More Services'),
          ),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconContainer(
                  color: Color(0xffEDEFFF),
                  text: 'Invest',
                  image: 'assets/images/frame.png',
                ),
                IconContainer(
                  color: Color(0xffEDEFFF),
                  text: 'Loans',
                  image: 'assets/images/interest.png',
                ),
                IconContainer(
                  color: Color(0xffEDEFFF),
                  text: 'Insurance',
                  image: 'assets/images/Heart.png',
                ),
                IconContainer(
                  color: Color(0xffEDEFFF),
                  text: 'Fastag',
                  image: 'assets/images/smart-car.png',
                ),
                IconContainer(
                  color: Color(0xffEDEFFF),
                  text: 'Save',
                  image: 'assets/images/bank.png',
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: TextRow(text: 'Recent Transactions'),
          ),
          SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileRow(image: 'mum', text: 'Anastasia'),
                ProfileRow(image: 'dots', text: 'Joanna'),
                ProfileRow(image: 'dude', text: 'Martin'),
                ProfileRow(image: 'v', text: 'Electricity'),
                ProfileRow(image: 'electro', text: 'Recharge'),
              ],
            ),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Image.asset('assets/images/pixarmum.png'),
            //     Image.asset('assets/images/pixardots.png'),
            //     Image.asset('assets/images/pixardude.png'),
            //     Image.asset('assets/images/pixarv.png'),
            //     Image.asset('assets/images/pixarelectro.png'),
            //   ],
            // ),
          ),
          SizedBox(height: 50),
          Container(
            width: 150,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff4D5DFA),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'Receive Money',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Spartan',
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class OpenPage extends StatelessWidget {
  const OpenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Container(
              //padding: EdgeInsets.only(top: 29),
              height: 127,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    color: Colors.black,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: AppBar(
                  leading: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Opacity(
                        opacity: 0.2,
                        child: Center(
                          child: Image.asset(
                            'assets/images/iconbackground.png',
                            height: 53,
                            width: 53,
                            color: Color(0xfff616161),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                          'assets/images/profile.png',
                          width: 38,
                          height: 38,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),*/

/*child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(140),
          child: AppBar(
            backgroundColor: Color(0xffFFFFFF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            leading: Stack(
              clipBehavior: Clip.none,
              children: [
                Opacity(
                  opacity: 0.2,
                  child: Center(
                    child: Image.asset(
                      'assets/images/iconbackground.png',
                      height: 53,
                      width: 53,
                      color: Color(0xfff616161),
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    'assets/images/profile.png',
                    width: 38,
                    height: 38,
                  ),
                ),
              ],
            ),
            elevation: 2,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(120),
              child: Container(
                child: TabBar(
                  padding: const EdgeInsets.only(
                    top: 50,
                    left: 0,
                    right: 16,
                    bottom: 8,
                  ),
                  isScrollable: true,
                  tabs: [
                    Text(
                      'Home',
                      style: TextStyle(
                        fontFamily: 'Spartan',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff696D78),
                      ),
                    ),
                    Text(
                      'Balance',
                      style: TextStyle(
                        fontFamily: 'Spartan',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff696D78),
                      ),
                    ),
                    Text(
                      'Offers',
                      style: TextStyle(
                        fontFamily: 'Spartan',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff696D78),
                      ),
                    ),
                    Text(
                      'Rewards',
                      style: TextStyle(
                        fontFamily: 'Spartan',
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Color(0xff696D78),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        //body: ,
      ),*/
