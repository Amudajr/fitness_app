import 'package:flutter/material.dart';
import 'package:fit/pages/login/login_page.dart';
import 'package:page_view_indicators/circle_page_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselPage extends StatefulWidget {
  const CarouselPage({Key? key}) : super(key: key);

  @override
  State<CarouselPage> createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  String? title = 'Next';
  int? index;
  String? quote = 'Get Burn';
  final pageController = PageController();
  final _currentPageNotifier = ValueNotifier<int>(0);

  int activeIndex = 0;

  final List<String> carouselImages = [
    "images/run.jpg",
    "images/jump.jpg",
    "images/squart.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: pageController,
                itemCount: carouselImages.length,
                itemBuilder: (
                  _,
                  activeIndex,
                ) {
                  return Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          carouselImages[activeIndex],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Spacer(),
                          Text(
                            quote.toString(),
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: .5),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              // _previousButton(),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Skip',
                                  style: GoogleFonts.ubuntu(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: .5),
                                  ),
                                ),
                              ),
                              _nextButton(),
                            ],
                          ),
                          _buildCircleIndicator1(),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                },
                onPageChanged: (index) {
                  // print(index);
                  _currentPageNotifier.value = index;
                  if (index == (carouselImages.length - 1)) {
                    setState(() {
                      title = 'Get Started';
                      quote = 'Go home';
                    });
                  } else if (index == (carouselImages.length - 2)) {
                    setState(() {
                      quote = 'Go less';
                      title = 'Next';
                    });
                  } else {
                    setState(() {
                      title = 'Next';
                      quote = 'Go hard';
                    });
                  }
                }),
          ),
        ],
      ),
    );
  }

  _buildCircleIndicator1() {
    return CirclePageIndicator(
      size: 16.0,
      selectedSize: 20.0,
      itemCount: carouselImages.length,
      currentPageNotifier: _currentPageNotifier,
      dotColor: Colors.white,
      selectedDotColor: Colors.blue,
    );
  }

  _nextButton() {
    return TextButton(
      onPressed: () {
        if (_currentPageNotifier.value == (carouselImages.length - 1)) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginPage(),
            ),
          );
        } else {
          next();
        }
      },
      child: Text(
        title.toString(),
        style: GoogleFonts.ubuntu(
          textStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              letterSpacing: .5),
        ),
      ),
    );
  }

  // _previousButton() {
  //   return TextButton(
  //     onPressed: previous,
  //     child: Text(
  //       'Previous',
  //       style: GoogleFonts.ubuntu(
  //         textStyle: TextStyle(
  //             color: Colors.white,
  //             fontSize: 20,
  //             fontWeight: FontWeight.bold,
  //             letterSpacing: .5),
  //       ),
  //     ),
  //   );
  // }

  void previous() => pageController.previousPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn);

  void next() => pageController.nextPage(
      duration: Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn);
}
