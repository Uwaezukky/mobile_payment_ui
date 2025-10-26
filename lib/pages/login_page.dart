import 'package:flutter/material.dart';
import 'package:mobile_payment/pages/open.dart';
import 'package:mobile_payment/widgets/text_design.dart';

import '../widgets/reusable_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF7FBFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset('assets/images/Group.png'),
                Positioned(
                  top: 111,
                  left: 38,
                  child: Text(
                    'LOGIN WITH YOUR\n MOBILE PHONE\n NUMBER',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  top: 211,
                  left: 38,
                  child: Image.asset(
                    'assets/images/background.png',
                    width: 220,
                    height: 155,
                  ),
                ),
                Positioned(
                  top: 297,
                  left: 50,
                  child: Image.asset(
                    'assets/images/graphics.png',
                    width: 170.76,
                    height: 250.57,
                  ),
                ),
              ],
            ),
            SizedBox(height: 38),
            Container(
              width: 304,
              height: 43,
              decoration: BoxDecoration(
                color: Color(0xffEDEFFF),
                borderRadius: BorderRadius.circular(20),
                //shape: BoxShape.circle,
              ),
              child: TextFormField(
                controller: TextEditingController(),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  //prefixText: '+234',
                  prefix: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '+234',
                        style: TextStyle(
                          fontFamily: 'Spartan',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color(0xff4D5DFA),
                        ),
                      ),
                      SizedBox(width: 19),
                    ],
                  ),
                  hintText: 'Enter Mobile Number',
                  hintStyle: TextStyle(
                    fontFamily: 'Spartan',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff858891),
                  ),
                ),
              ),
            ),
            SizedBox(height: 19),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OpenPage()),
                );
              },
              child: ReusableButton(
                color: Color(0xff4D5DFA),
                text: 'Verify',
                style: TextStyle(
                  fontFamily: 'Spartan',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 17),

            TextDesign(text: 'Your personal details are safe with us'),
            SizedBox(height: 9),
            TextDesign(
              text:
                  'Read our Privacy Policy and Terms and \n                           Conditions',
            ),
          ],
        ),
      ),
    );
  }
}
