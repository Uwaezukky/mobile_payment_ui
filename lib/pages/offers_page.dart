import 'package:flutter/material.dart';
import 'package:mobile_payment/widgets/offers_card.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            OffersContainer(
              color: Color(0xffEDF6FF),
              image: 'assets/images/girlie.png',
              text: 'Mobile Recharge Offer',
              text2: 'Use Code FIRST20',
              text3:
                  'Get 20 % Instant cashback up to Rs 50 \non your firs mobile recharge. T&C apply',
            ),
            OffersContainer(
              color: Color(0xffFFEDED),
              image: 'assets/images/girlie2.png',
              text: 'DTH Recharge Offer',
              text2: 'Use Code FIRSDTHT20',
              text3:
                  'Get 20 % Instant cashback up to Rs 50 \non your firs mobile recharge. T&C apply',
            ),
            OffersContainer(
              color: Color(0xffEDFFEF),
              image: 'assets/images/girlie3.png',
              text: 'Flipcart Shopping Offer',
              text3:
                  'Shop on Flipcart using our payment system\nto get upto 50% cashback. T&C appply',
            ),
            OffersContainer(
              color: Color(0xffFFFFED),
              image: 'assets/images/people.png',
              text: 'Money Transfer Offer',
              text3:
                  'Get a scratch card with assuerd casbck and\ncoupons on Money Transfer of Rs 500 \nor more. T&C apply',
            ),
            OffersContainer(
              color: Color(0xffF2EDFF),
              image: 'assets/images/girlie4.png',
              text: 'Rs 50 Off on Flights',
              text2:
                  'Get instant discount on flat 50 Rs on\n Flight ticket booking. T&C apply',
              text3: 'Go to offer Page',
            ),
          ],
        ),
      ),
    );
  }
}
