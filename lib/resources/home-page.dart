import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 28, top: 0),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 28, top: 0),
              child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 25,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 42, 16, 50),
                child: Container(
                  height: 158,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Stack(
                    children: [
                      Positioned(
                          top: 19,
                          left: 139,
                          child: SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "THIS JULY",
                                  style: GoogleFonts.imprima(
                                      textStyle: const TextStyle(
                                          color: Colors.white, fontSize: 22)),
                                ),
                                SizedBox(
                                  width: 126,
                                  child: Text(
                                      "Travel to the end of the world this whole month cause we care when you are happy",
                                      style: GoogleFonts.kaushanScript(
                                          textStyle: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 10))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 30),
                                  child: SizedBox(
                                    width: 133,
                                    height: 18,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                        Color>(
                                                    const Color.fromRGBO(
                                                        152, 128, 128, 1))),
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Try Now",
                                                style: GoogleFonts.roboto(
                                                    textStyle: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 11,
                                                        fontWeight:
                                                            FontWeight.w700))),
                                            Image.asset(
                                              "assets/icons/bi_arrow-down.png",
                                              width: 16,
                                              height: 16,
                                            )
                                          ],
                                        )),
                                  ),
                                )
                              ],
                            ),
                          )),
                      Positioned(
                        top: 20,
                        left: 11,
                        child: Text(
                          "30%",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(229, 229, 229, 1),
                                  fontSize: 48)),
                        ),
                      ),
                      Positioned(
                        top: 74,
                        left: 45,
                        child: Text(
                          "Off",
                          style: GoogleFonts.imprima(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(252, 194, 27, 1),
                                  fontSize: 55)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 28, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(43, 76, 89, 1),
                          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                          minimumSize: Size.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "family cars",
                          style: GoogleFonts.ptSans(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700)),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                          minimumSize: Size.zero,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color.fromRGBO(43, 76, 89, 1)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Cheap cars",
                          style: GoogleFonts.ptSans(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(43, 76, 89, 1),
                                  fontWeight: FontWeight.w700)),
                        )),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.fromLTRB(16, 5, 16, 5),
                          minimumSize: Size.zero,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color.fromRGBO(43, 76, 89, 1)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Luxuly cars",
                          style: GoogleFonts.ptSans(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color.fromRGBO(43, 76, 89, 1),
                                  fontWeight: FontWeight.w700)),
                        )),
                    Image.asset("assets/icons/ep_search.png",
                        width: 29, height: 29)
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28, right: 28, top: 65),
                child: Text(
                  "Cars Available Near You",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 28, bottom: 34),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "View more",
                    style: GoogleFonts.questrial(
                        textStyle: const TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(198, 73, 73, 1),
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 28, right: 28),
                child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    shrinkWrap: true,
                    crossAxisSpacing: 34,
                    mainAxisSpacing: 34,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(246, 246, 246, 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Image.network(
                                "https://s3-alpha-sig.figma.com/img/7275/9cf0/9bb3fb5e253f594a5a77b13033205598?Expires=1704067200&Signature=e~~irR5rmkcllgEYjJXUtCza4NVAXjekoc5E3bpXx-tL-bPd8Z~G9WtY7itg2itEscvDuSVdxE22Espba8MoFBisHHUY5Xuo6jDHPywuHTGBigIFdJiNfYFLq2pIYqUvX-GB5hLKfMZN2Ee4G1N0fBCzO06csDd2Id9XbOpjkdH2YKykMrw9Lp7x6fRp8LFxgtJWJvwJeCP-~gID71~-SIcI7szzqmfyyyeFAuw89bsysS1ewP5miIGWKYvQ2zT1V6eldcHimYUOeIRfmxCyLnlys446~eODKeCJBH2PCVL~k4JhLJDAEq4uvOKVgpSosqg~49lf3qexOTjTvma6Dw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 85,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "LAMBORGHINI",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "\$550/day",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/icons/akar-icons_heart.png",
                                      width: 18,
                                      height: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                            "assets/icons/bi_arrow-down-circle-fill.png",
                                            width: 18,
                                            height: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(246, 246, 246, 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: Offset(0, 4))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/3ff8/1f24/c3ff87b11949b61629ef10cbeed03968?Expires=1704067200&Signature=H4CibcSUxLBL-wXKYFwhVKT517VWEIHnSfqR4Xjgf9JhyDkhtRHFhhtMLFsqRogLc8rXdt~rl-fDJEvp8uyEoXsTzg-31J5p9xv~3Fb5XtyNqNSQCu1XDZ7EoBhsj2h7cwnJcGE-yiEK-6ahuSp3k79EtPwhZbTGTq3ov831pj6rkN-Q8YvJzm4C2JdVFxKEVTi1iPYPX5sv5wELSNslRcQkvRxPIaM486yHhCGse-mDJD5dDome~leGuezFnOiwIkP0GMWyRJBoimqmDxxpS8hXPKJUi0Cq-kSauLZLvBdpAopy7DTzTj~UIh7ZYUeEAgvSkuSm7-wLmVpqbmA-dQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "LAMBORGHINI",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "\$550/day",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/icons/akar-icons_heart.png",
                                      width: 18,
                                      height: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                            "assets/icons/bi_arrow-down-circle-fill.png",
                                            width: 18,
                                            height: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(246, 246, 246, 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/1088/d371/ba0b3f7459f9f3e3d70d64f104f6784b?Expires=1704067200&Signature=k4v-ZBmAfIdyhdTlqQgPxMEtQQ6oUncI3LMIAKw8w9h4l6Vy2zUHuuTs2iV7jTsG2lj7OXsjaLATJtV41Hb~w7Aa1yCWW-Dj~qifr4Iw20X3hMx9Mhlhd~U3lWfnufWZLZcgm0VAR287DxcMx4ArA7UOhCSMzd~aDowIU1eL9odGLKzgPjZ0AY9Yh7T9~Xpc43EiTDPr36rtWjK4i93-vzwxZKIMhk4MHoGyn4qb0YZvQWP1LJOzOwwRPQGFuvLJB8A0bLYGsilN8aI4tK6CUujQq-OGtKXTFgVo4CDZCsJGNRREPC1UmKBB2yK8Ib2RR3Wl9ZjGoSMlpUnt4KhOFA__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              width: double.infinity,
                              fit: BoxFit.cover,
                              height: 85,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "LAMBORGHINI",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "\$550/day",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/icons/akar-icons_heart.png",
                                      width: 18,
                                      height: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                            "assets/icons/bi_arrow-down-circle-fill.png",
                                            width: 18,
                                            height: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(246, 246, 246, 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/3ff8/1f24/c3ff87b11949b61629ef10cbeed03968?Expires=1704067200&Signature=H4CibcSUxLBL-wXKYFwhVKT517VWEIHnSfqR4Xjgf9JhyDkhtRHFhhtMLFsqRogLc8rXdt~rl-fDJEvp8uyEoXsTzg-31J5p9xv~3Fb5XtyNqNSQCu1XDZ7EoBhsj2h7cwnJcGE-yiEK-6ahuSp3k79EtPwhZbTGTq3ov831pj6rkN-Q8YvJzm4C2JdVFxKEVTi1iPYPX5sv5wELSNslRcQkvRxPIaM486yHhCGse-mDJD5dDome~leGuezFnOiwIkP0GMWyRJBoimqmDxxpS8hXPKJUi0Cq-kSauLZLvBdpAopy7DTzTj~UIh7ZYUeEAgvSkuSm7-wLmVpqbmA-dQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "LAMBORGHINI",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "\$550/day",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/icons/akar-icons_heart.png",
                                      width: 18,
                                      height: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                            "assets/icons/bi_arrow-down-circle-fill.png",
                                            width: 18,
                                            height: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(246, 246, 246, 1),
                          boxShadow: const [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.25),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4))
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network(
                              "https://s3-alpha-sig.figma.com/img/3ff8/1f24/c3ff87b11949b61629ef10cbeed03968?Expires=1704067200&Signature=H4CibcSUxLBL-wXKYFwhVKT517VWEIHnSfqR4Xjgf9JhyDkhtRHFhhtMLFsqRogLc8rXdt~rl-fDJEvp8uyEoXsTzg-31J5p9xv~3Fb5XtyNqNSQCu1XDZ7EoBhsj2h7cwnJcGE-yiEK-6ahuSp3k79EtPwhZbTGTq3ov831pj6rkN-Q8YvJzm4C2JdVFxKEVTi1iPYPX5sv5wELSNslRcQkvRxPIaM486yHhCGse-mDJD5dDome~leGuezFnOiwIkP0GMWyRJBoimqmDxxpS8hXPKJUi0Cq-kSauLZLvBdpAopy7DTzTj~UIh7ZYUeEAgvSkuSm7-wLmVpqbmA-dQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "LAMBORGHINI",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 11,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, left: 16),
                              child: Text(
                                "\$550/day",
                                style: GoogleFonts.ptSans(
                                    textStyle: const TextStyle(
                                        fontSize: 10,
                                        color: Color.fromRGBO(43, 76, 89, 1))),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 6, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Image.asset(
                                      "assets/icons/akar-icons_heart.png",
                                      width: 18,
                                      height: 18,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                        onTap: () {},
                                        child: Image.asset(
                                            "assets/icons/bi_arrow-down-circle-fill.png",
                                            width: 18,
                                            height: 18)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
