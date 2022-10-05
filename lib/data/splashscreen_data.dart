import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

List<Widget> pages = [
    Stack(
      children: [
        Container(
          color: Colors.blueAccent,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: FittedBox(
                child: Lottie.network(
                  "https://assets5.lottiefiles.com/private_files/lf30_yc1xrhz7.json",
                  width: 50,
                  height: 50,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Text(
              "HiddenCodz",
              style: GoogleFonts.righteous(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
    Stack(
      children: [
        Container(
          color: Color.fromARGB(255, 255, 123, 0),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: FittedBox(
                child: Lottie.network(
                  "https://assets5.lottiefiles.com/packages/lf20_1bdm0t0m.json",
                  width: 50,
                  height: 50,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Text(
              "HiddenCodz",
              style: GoogleFonts.satisfy(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
    Stack(
      children: [
        Container(
          color: const Color.fromARGB(255, 242, 206, 0),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 400,
              width: 400,
              child: FittedBox(
                child: Lottie.network(
                  "https://assets5.lottiefiles.com/packages/lf20_vmiyp8ox.json",
                  width: 50,
                  height: 50,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
            Text(
              "HiddenCodz",
              style: GoogleFonts.acme(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    ),
  ];