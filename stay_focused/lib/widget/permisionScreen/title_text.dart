import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  var titileText="";
  TitleText(String value){
    this.titileText=value;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(titileText,
      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),);
  }
}
