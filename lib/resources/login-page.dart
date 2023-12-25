import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rental_car_flutter/resources/SlideRightRoute.dart';
import 'package:rental_car_flutter/resources/home-page.dart';
import 'package:rental_car_flutter/resources/register-page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool display = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(32, 102, 32, 102),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: GoogleFonts.imprima(
                  textStyle: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromRGBO(43, 76, 89, 1),
                ),
                child: const SizedBox(
                  height: 4,
                  width: 58,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 82),
                child: Text(
                  "EMAIL OR PHONE",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(43, 76, 89, 1),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Loremipsum@gmail.com",
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(43, 76, 89, 1), width: 2.0),
                    ),
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(161, 161, 161, 1),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 28),
                child: Text(
                  "PASSWORD",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(43, 76, 89, 1),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0),
                child: TextField(
                  obscureText: display,
                  decoration: InputDecoration(
                    hintText: "***********",
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color.fromRGBO(43, 76, 89, 1), width: 2.0),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(161, 161, 161, 1),
                    ),
                    suffixIcon: IconButton(
                        onPressed: displayPassword,
                        icon: Icon(
                            display ? Icons.visibility_off : Icons.visibility)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 34),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Forgot password?",
                    style:
                        GoogleFonts.inter(textStyle: const TextStyle(fontSize: 11)),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(43, 76, 89, 1)),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.fromLTRB(0, 14, 0, 14)),
                    ),
                    onPressed: () {
                      Navigator.push(context, SlideRightRoute(page: const HomePage())); 
                    },
                    child: const Text(
                      "Log In",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    )),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Center(
                  child: Text(
                    "OR",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 2, color: Colors.black)),
                padding: const EdgeInsets.fromLTRB(46, 10, 45, 11),
                child: SizedBox(
                  width: double.infinity,
                  child: InkWell(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/icons/google.png",
                            width: 31,
                            height: 31,
                          ),
                          Text(
                            "Continue With Google",
                            style: GoogleFonts.imprima(
                                textStyle: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w400)),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 2, color: Colors.black)),
                  padding: const EdgeInsets.fromLTRB(46, 10, 45, 11),
                  child: SizedBox(
                    width: double.infinity,
                    child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              "assets/icons/facebook.png",
                              width: 31,
                              height: 31,
                            ),
                            Text(
                              "Continue With Facebook",
                              style: GoogleFonts.imprima(
                                  textStyle: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            ),
                          ],
                        )),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Don’t Have an account yet?",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, SlideRightRoute(page: const RegisterPage()));
                    },
                    child: const Text(
                      "SIGN UP",
                      style: TextStyle(
                        color: Color.fromRGBO(252, 194, 27, 1),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  displayPassword() {
    setState(() {
      display = !display;
    });
  }
}
