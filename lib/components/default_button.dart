import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.pressed,
    this.color,
  }) : super(key: key);
  final String text;
  final Function pressed;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          color: color,
          onPressed: pressed,
          child: Text(
            text.toUpperCase(),
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Colors.white),
          )),
    );
  }
}
