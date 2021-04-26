import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:sos_application/dummyFirstInitScreen.dart';
import 'registerScreen.dart';

/*https://medium.com/aubergine-solutions/create-an-onboarding-page-indicator-in-3-minutes-in-flutter-a2bd97ceeaff*/

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  double screenWidth = 0.0;
  double screenheight = 0.0;
  int currentIndex = 0;
  int previousIndex = 0;
  PageController controller;
  double moveBar = 0.0;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    controller = PageController(initialPage: currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    screenWidth = MediaQuery.of(context).size.width;
    screenheight = MediaQuery.of(context).size.height;

    final List<PageViewModel> boardingWidgetList = <PageViewModel>[
      PageViewModel(
          title: "Set Trusted Contacts",
          body: "Choose contacts to receive\nSOS messages",
          image: Image.asset('assets/img/userstatus_isometric.png'),
          decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              bodyTextStyle: TextStyle(color: Colors.grey[700], fontSize: 16))),
      PageViewModel(
          title: "One Click to Send",
          body: "Send emergency messages\nin one click",
          image: Image.asset('assets/img/sendmsg_isometric.png'),
          decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              bodyTextStyle: TextStyle(color: Colors.grey[700], fontSize: 16))),
      PageViewModel(
          title: "Integrated Servies",
          body: "Dial local emergency services\nfrom one button",
          image: Image.asset('assets/img/cs_isometric.png'),
          decoration: PageDecoration(
              titleTextStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
              bodyTextStyle: TextStyle(color: Colors.grey[700], fontSize: 16)),
          footer: SizedBox(
            height: queryData.size.height * 8 / 100,
            width: queryData.size.width * 65 / 100,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => RegisterNumber()));
              },
              child: Text("Setup Number"),
            ),
          )),
    ];

    return Scaffold(
        body: Container(
            child: SafeArea(
                child: IntroductionScreen(
      pages: boardingWidgetList,
      onDone: () {},
      showNextButton: false,
      showDoneButton: false,
      showSkipButton: false,
      next: const Icon(Icons.skip_next),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: Colors.red,
        color: Colors.red[100],
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
    ))));
  }
}
