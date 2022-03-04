import 'package:flutter/cupertino.dart';

class HeaderText extends StatelessWidget {
String headerText="";
  HeaderText(String value){
   this.headerText=value;
  }

  @override
  Widget build(BuildContext context) {
    return Text(headerText,
      style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),);
  }
}