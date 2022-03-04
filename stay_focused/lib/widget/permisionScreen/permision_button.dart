
import 'package:flutter/material.dart';
import 'package:stay_focused/screens/second_permission_screen.dart';
import 'package:stay_focused/screens/third_permision_screen.dart';

class PermisionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('I ACCEPT'),
      onPressed: () {
        Navigator. push(
          context,
          MaterialPageRoute(builder: (context) => SecondPermisionScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
          textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold)),
    );
  }
}

class SecondPermisionButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      child: Text('CLICK TO GRANT'),
      onPressed: () {
        Navigator. push(
          context,
          MaterialPageRoute(builder: (context) => ThirdPermisionScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          minimumSize: Size(350, 35),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
          textStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold)),
    );
  }
}