import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return getDotsDecorator();
  }

  Scaffold getDotsDecorator() {
    return Scaffold(
      body: SafeArea(child: getDotsDecoration()),
    );
  }

  IntroductionScreen getDotsDecoration() {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "A reader lives a thousand lives",
            body: "The man who never reads lives only one",
            image: buildImage(
              "assets/ebook.png",
            ),
            decoration: getPageDecoration()),
        PageViewModel(
          title: "Featured Books",
          body: "Available right at your fingerprints",
          image: buildImage('assets/readingbook.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Simple ui",
          body: "For enhancing reader experiance",
          image: buildImage('assets/manthumbs.png'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: "Today a reader, tomorrow a reader",
          body: "Start your journary",
          image: buildImage('assets/learn.png'),
          decoration: getPageDecoration(),
        ),
      ],
      showNextButton: true,
      done: Text(
        "Read",
        style: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
      ),
      onDone: () {
        // goToHome(context);
      },
      showSkipButton: true,
      skip: Text("Skip"),
      next: Icon(Icons.arrow_forward),
      dotsDecorator: DotsDecorator(
          color: Colors.blue,
          size: Size(10, 10),
          activeColor: Colors.yellow,
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          activeSize: Size(22, 10)),
      onChange: (val) => print("Page $val Selected"),
      animationDuration: 1000,
    );
  }

  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        imagePadding: EdgeInsets.all(24),
        titlePadding: EdgeInsets.all(20.0),
      );

  Widget buildImage(String path) => Center(
        child: Image.asset(
          path,
          width: 350,
        ),
      );
}
 // void goToHome(BuildContext context) {
  //   Navigator.of(context)
  //       .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
  // }
