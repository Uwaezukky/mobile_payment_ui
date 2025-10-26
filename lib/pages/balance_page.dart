import 'package:flutter/material.dart';
import 'package:mobile_payment/widgets/bank_tile.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          //allows
          child: Container(
            margin: EdgeInsets.only(left: 12, right: 12, top: 25),
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            width: MediaQuery.of(context).size.width,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/back_arrow.png', scale: 1.6),
                    Text(
                      'Portfolio Value',
                      style: TextStyle(
                        fontFamily: 'Spartan',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff22252B),
                      ),
                    ),
                    Image.asset('assets/images/frame_black.png', scale: 1.6),
                  ],
                ),
                Text(
                  '₹54,375',
                  style: TextStyle(
                    fontFamily: 'Spartan',
                    fontWeight: FontWeight.w800,
                    fontSize: 35,
                    color: Color(0xff616161),
                  ),
                ),
                Text(
                  'In 3 Accounts',
                  style: TextStyle(
                    fontFamily: 'Spartan',
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                    color: Color(0xff616161),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BankTiles(
                      color: Color(0xffF4EDFF),
                      text: 'Polaris Bank',
                      text2: '16,456.05',
                      color2: Color(0xff8F4DFA),
                    ),
                    BankTiles(
                      color: Color(0xffeab1b7),
                      text: 'Zenith Bank',
                      text2: '2045.05',
                      color2: Color(0xffd50e39),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                BankTiles(
                  color: Color(0xffEDFFF4),
                  text: 'Fidelity Bank',
                  text2: '35873.5',
                  color2: Color(0xff3de68b),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.only(bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Color(0xffEDEFFF),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Add / Manage Accounts',
                      style: TextStyle(
                        fontFamily: 'Spartan',
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff4D5DFA),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
