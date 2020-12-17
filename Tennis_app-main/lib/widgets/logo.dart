import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final String text;

  const Logo({
    Key key,
    @required this.text
    }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195,
      margin: EdgeInsets.only(top: 50),
      child: Column(
        children: <Widget>[
          Image(image: AssetImage('assets/tennis_ball.png')),
          SizedBox(height: 20),
          Text(this.text, style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300)),
        ],
      ),
    );
  }
}
