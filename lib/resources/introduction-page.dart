import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_car_flutter/resources/SlideRightRoute.dart';
import 'package:rental_car_flutter/resources/login-page.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({Key? key}) : super(key: key);

  @override
  _IntroductionPageState createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              "assets/images/car-banner.jpeg",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
                left: 0,
                right: 0,
                top: 220,
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: "T",
                          children: [
                            TextSpan(
                                text: "II",
                                style: GoogleFonts.iceberg(
                                    textStyle: const TextStyle(
                                  color: Color.fromRGBO(43, 76, 89, 1),
                                ))),
                            const TextSpan(
                              text: "RA",
                            )
                          ],
                          style: GoogleFonts.iceberg(
                            textStyle: const TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 220),
                      child: Text(
                        "Rent your dream car from the",
                        style: TextStyle(
                            color: Color.fromRGBO(246, 246, 246, 0.81),
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Text(
                      "Best Company",
                      style: TextStyle(
                          color: Color.fromRGBO(246, 246, 246, 0.81),
                          fontSize: 26,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, SlideRightRoute(page: const LoginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(198, 73, 73, 1),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 64, vertical: 14),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Get Started",
                              style: GoogleFonts.inconsolata(
                                  textStyle: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w800)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4),
                              child: Image.asset("assets/icons/arrow-right.png", width: 20, height: 18,),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
