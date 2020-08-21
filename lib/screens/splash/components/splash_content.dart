import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    @required this.size,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(
          flex: 3,
        ),
        Text(
          'tokoto'.toUpperCase(),
          style: TextStyle(
              fontSize: getProportionateScreenHeight(36),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor),
        ),
        Text(text, textAlign: TextAlign.center),
        Spacer(),
        Container(
          child: Image.asset(
            image,
            width: size.width,
            height: size.height * 0.4,
            fit: BoxFit.cover,
          ),
        )
      ],
    );
  }
}
