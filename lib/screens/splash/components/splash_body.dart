import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';
// ipmport in best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';
import '../../login/login_screen.dart';

class SplashBody extends StatefulWidget {
  SplashBody({Key key}) : super(key: key);

  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      'text': 'welcome to tokoto, Lets shope',
      'image': 'assets/images/imageedit_11_8558209889.jpg'
    },
    {
      'text': 'we cover all your needed',
      'image': 'assets/images/imageedit_13_5765870779.jpg'
    },
    {
      'text': 'lorem ipsum here, some dummy content',
      'image': 'assets/images/imageedit_15_2202634426.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: SizedBox(
        height: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                        size: size,
                        text: splashData[index]['text'],
                        image: splashData[index]['image'],
                      )),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(60)),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: getProportionateScreenHeight(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length, (index) => buildDot(index: index)),
                    ),
                    SizedBox(height: size.height * 0.21),
                    DefaultButton(
                      text: 'continue',
                      color: kPrimaryColor,
                      pressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      height: 6.0,
      width: currentPage == index ? 20.0 : 6.0,
      margin: EdgeInsets.only(right: 5.0),
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3.0)),
    );
  }
}
