import 'package:flutter/material.dart';
import 'package:mobile_payment/widgets/offers_card.dart';
import 'package:mobile_payment/widgets/rewards_container.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
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
                  Text(
                    'Cash backs earned',
                    style: TextStyle(
                      fontFamily: 'Spartan',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    '₹507',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Spartan',
                      color: Color(0xff616161),
                    ),
                  ),
                  Text(
                    '+ 88 Rs  This month',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(top: 15),
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    decoration: BoxDecoration(
                      color: Color(0xffFFEDF1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        'View your cashback history',
                        style: TextStyle(
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color(0xffFA4D96),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Scratchcards Won',
                    style: TextStyle(
                      fontFamily: 'Spartan',
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff14184E),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RewardsContainer(color: Color(0xffFFEDFF)),
                      RewardsContainer(color: Color(0xffEDEFFF)),
                      RewardsContainer(color: Color(0xffEDFFF9)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 28.0),
                    child: Text(
                      'Collect Rewards',
                      style: TextStyle(
                        fontFamily: 'Spartan',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff14184E),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            OffersContainer(
              color: Color(0xffEDFFF9),
              image: 'assets/images/man.png',
              text: 'Flat 50 off On food Delivery',
              text3: 'On orders above 99 on Swaggy, Somato',
              showContainer: true,
            ),
            OffersContainer(
              color: Color(0xffFFEDF1),
              image: 'assets/images/shopping.png',
              text: '20% Cashback On Amazon',
              text3: 'Up to Rs 150 Minimum Order 1000',
              showContainer: true,
            ),
          ],
        ),
      ),
    );
  }
}
