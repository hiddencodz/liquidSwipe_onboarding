import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/splashscreen_data.dart';

class LiquidSplash extends StatefulWidget {
  const LiquidSplash({super.key});

  @override
  State<LiquidSplash> createState() => _LiquidSplashState();
}

class _LiquidSplashState extends State<LiquidSplash> {
  int pageNo = 0;

  final LiquidController _liquidController = LiquidController();
  dotBuilder(int indexNo) {
    var index = indexNo;
    return (Icon(
      Icons.circle,
      size: pageNo == index ? 30 : 17,
      color:
          pageNo == index ? const Color.fromARGB(255, 72, 8, 4) : Colors.white,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Builder(
              builder: (context) => LiquidSwipe(
                liquidController: _liquidController,
                pages: pages,
                positionSlideIcon: 0.8,
                slideIconWidget: const Icon(Icons.arrow_back_ios),
                waveType: WaveType.liquidReveal,
                fullTransitionValue: 1000,
                enableSideReveal: true,
                enableLoop: true,
                ignoreUserGestureWhileAnimating: true,
                onPageChangeCallback: ((activePageIndex) {
                  pageNo = activePageIndex;
                  setState(() {});
                }),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: List.generate(3, (index) => dotBuilder(index)),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 35,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                          ),
                          color: Color.fromARGB(255, 178, 20, 9)),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                          ),
                          onTap: () {
                            if (pageNo > 0) {
                              _liquidController.animateToPage(page: pageNo - 1);
                            }
                          },
                          child: Center(
                            child: Text(
                              "Back",
                              style: GoogleFonts.kanit(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Container(
                        width: 100,
                        height: 35,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40),
                            ),
                            color: Color.fromARGB(255, 178, 20, 9)),
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(30),
                            ),
                            onTap: () {
                              if (pageNo < 3) {
                                _liquidController.animateToPage(
                                    page: pageNo + 1);
                              }
                            },
                            child: Center(
                              child: Text(
                                "Next",
                                style: GoogleFonts.kanit(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
