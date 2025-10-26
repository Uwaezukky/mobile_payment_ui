import 'package:flutter/material.dart';

import 'login_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FBFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 60),

            //Center logo
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 82,
                width: 82,
              ),
            ),

            //  SizedBox(height: 218),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(height: 46, width: 183, color: Color(0xFF5626c4)),
                    Positioned(
                      top: -4,
                      left: -4,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                        child: Container(
                          height: 46,
                          width: 183,
                          color: Color(0xff4D5DFA),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 12.0,
                              right: 8.0,
                              top: 8.0,
                            ),
                            child: Text(
                              'INSTANT PAY',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'RussoOne',
                                fontWeight: FontWeight.w400,
                                fontSize: 25,
                                wordSpacing: 0.85,
                                letterSpacing: -0.33,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 20,
                  child: Text(
                    'Your Perfect Payment Partner',
                    style: TextStyle(
                      color: Color(0xff4D5DFA),
                      fontFamily: 'Play',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      letterSpacing: -0.33,
                    ),
                  ),
                ),
                SizedBox(height: 31),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoadingWidget(color: Color(0xff858891)),
                    SizedBox(width: 5),

                    LoadingWidget(color: Color(0xff4D5DFA)),

                    SizedBox(width: 5),

                    LoadingWidget(color: Color(0xff4D5DFA)),

                    SizedBox(width: 5),

                    LoadingWidget(color: Color(0xff4D5DFA)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  Color color;
  LoadingWidget({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 8,
      width: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //borderRadius: BorderRadius.circular(0),
        color: color,
      ),
    );
  }
}
