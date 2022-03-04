import 'package:flutter/material.dart';

class CircleText extends StatelessWidget {
  int circleText=0;
  CircleText(int value ){
    this.circleText=value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10,right: 20),
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.lightGreen,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(circleText.toString(),style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}

