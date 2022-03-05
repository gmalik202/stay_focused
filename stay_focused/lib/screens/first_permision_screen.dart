import 'package:flutter/material.dart';
import 'package:stay_focused/widget/permisionScreen/header_text.dart';
import 'package:stay_focused/widget/permisionScreen/permision_button.dart';
import 'package:stay_focused/widget/permisionScreen/title_text.dart';
import 'package:dots_indicator/dots_indicator.dart';


class FirstPermisionScreen extends StatefulWidget {
  FirstPermisionScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<FirstPermisionScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Colors.blue[50],
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
          child: Column(
          children: <Widget>[
            SizedBox(height: 85,),
            Container(
                width: 150.0,
                height: 150.0,
                decoration: new BoxDecoration(
                  // shape: BoxShape.circle,
                    image: new DecorationImage(
                      // fit: BoxFit.fill,
                        image: new AssetImage('assets/image/permission4.jpg')
                    )
                )
            ),
            SizedBox(height: 52,),
            HeaderText("Privacy Policy"),
            SizedBox(height: 19,),
            TitleText("Privacy read our complete privacy policy and"),
            TitleText("click I Accept"),
            SizedBox(height: 19,),
            Align(
              alignment: Alignment.centerRight,
              child: Text("The endless source of knowledge,\n "
                  "information, entertainment, \n"
                  "and training are books. \n"
                  "Before the age of the internet,\n"
                  " books were the most dominating source of knowledge.\n "
                  "But of course,\n "
                  "with technology, the forms of books have\n"
                  " changed, and books\n "
                  "have become more accessible to everyone. \n"
                  "The endless source of knowledge, information, entertainment,\n"
                  " and training are books.\n "
                  "Before the age of the internet, books were the most \n"
                  "dominating source of knowledge. But of course,\n"
                  " with technology, the forms of books have changed, \n"
                  "and books have become more accessible to everyone.\n"),
            ),
            Text("The endless source of knowledge,\n "
                "information, entertainment, \n"
                "and training are books. \n"
                "Before the age of the internet,\n"
                " books were the most dominating source of knowledge.\n "
                "But of course,\n "
                "with technology, the forms of books have\n"
                " changed, and books\n "
                "have become more accessible to everyone. \n"
                "The endless source of knowledge, information, entertainment,\n"
                " and training are books.\n "
                "Before the age of the internet, books were the most \n"
                "dominating source of knowledge. But of course,\n"
                " with technology, the forms of books have changed, \n"
                "and books have become more accessible to everyone.\n"),
            Container(
              height: 260,
              width: 410,
              color: Colors.white,
            ),
          ],
            ),
        ),

           Align(
             alignment: Alignment.bottomCenter,
            child: Container(
              height: 215,
              width: 415,
              color: Colors.white ,
              child: Column (
                children: [
                  SizedBox(height: 12),
                  Text(
                      "By proceedingyou agree to the data collection and\n  use descried above and as futher defined in our",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 15,color: Colors.green,decoration: TextDecoration.underline,),),
                  SizedBox(height: 15),
                  PermisionButton(),
                  SizedBox(height: 12),
                  Text(
                    "Accept & opt-out of data collection",
                    style: TextStyle(fontSize: 16,color: Colors.blue,fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 12),
                  DotsIndicator(
                    dotsCount: 3,
                    position: 0,
                    decorator: DotsDecorator(
                      color: Colors.grey, // Inactive color
                    activeColor: Colors.green,
                    ),
                     )

                ],
              ),
            ),
          )
    ]
      ),

    );
  }
}
