import "package:flutter/material.dart";
import 'package:introduction_screen/introduction_screen.dart';
import 'package:zoom_clone/screens/navigate_auth_screen.dart';
import 'package:zoom_clone/universal_variables.dart';

class IntroductionAuthScreen extends StatefulWidget {
  @override
  _IntroductionAuthScreenState createState() => _IntroductionAuthScreenState();
}

class _IntroductionAuthScreenState extends State<IntroductionAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Welcome",
          body: "Welcome to Zoom Clone",
          decoration: PageDecoration(
            bodyTextStyle: ralewayStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
            child: Image(
              image: NetworkImage(
                "https://lh3.googleusercontent.com/proxy/kBgUJc89lN9C7ZYOFhcNnD_yuutW4PHVPY1SjJRRa6SL8bRt-tKM2Sbq-sY8FVkwS77rIQWd5NpiwEfcNhX94cQoE0VqWMw",
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "Create & Join Meetings",
          body:
              "Create Meeting codes and join meeting with codes with just a single click",
          decoration: PageDecoration(
            bodyTextStyle: ralewayStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
            child: Image(
              image: NetworkImage(
                "https://static01.nyt.com/images/2020/03/25/business/25Techfix-illo/25Techfix-illo-mobileMasterAt3x.jpg",
              ),
            ),
          ),
        ),
        PageViewModel(
          title: "Privacy",
          body: "We Respect your Privacy",
          decoration: PageDecoration(
            bodyTextStyle: ralewayStyle(20, Colors.black),
            titleTextStyle: montserratStyle(20, Colors.black),
          ),
          image: Center(
            child: Image(
              image: NetworkImage(
                "https://www.pngitem.com/pimgs/m/74-745197_cyber-security-png-png-download-computer-security-png.png",
              ),
            ),
          ),
        ),
      ],
      onDone: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => NavigateAuthScreen()));
      },
      onSkip: () {},
      showSkipButton: true,
      skip: const Icon(
        Icons.skip_next,
        size: 45,
      ),
      next: const Icon(Icons.arrow_forward),
      done: Text(
        "DONE",
        style: ralewayStyle(20, Colors.black),
      ),
    );
  }
}
