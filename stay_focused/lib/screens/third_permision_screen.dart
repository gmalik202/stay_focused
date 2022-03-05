import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:stay_focused/widget/permisionScreen/circle_text.dart';
import 'package:stay_focused/widget/permisionScreen/header_text.dart';
import 'package:stay_focused/widget/permisionScreen/permision_button.dart';
import 'package:stay_focused/widget/permisionScreen/permision_screen_container.dart';
import 'package:stay_focused/widget/permisionScreen/title_text.dart';
import 'package:stay_focused/widget/permisionScreen/watch_video.dart';


class ThirdPermisionScreen extends StatefulWidget {
  ThirdPermisionScreen({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<ThirdPermisionScreen> {
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
            Column(
              children: <Widget>[
                SizedBox(height: 85,),
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: new BoxDecoration(
                      // shape: BoxShape.circle,
                        image: new DecorationImage(
                          // fit: BoxFit.fill,
                            image: new AssetImage('assets/image/permission1.jpg')
                        )
                    )
                ),
                SizedBox(height: 52,),
                HeaderText("Accessibility permission"),
                SizedBox(height: 19,),
                TitleText("Required for finding the apps and Sites you are"),
                TitleText("visiting"),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleText(1),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text("Find Stay Focused on next screen ",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                PermisionScreenContainer(),
                SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleText(2),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text("Click it and turn on the switch like below ",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                PermisionContainer(),
                SizedBox(height: 25),
                WatchVideo(),
              ],
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 115,
                width: 415,
                color: Colors.white ,
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SecondPermisionButton(),
                    SizedBox(
                      height: 12,
                    ),
                    DotsIndicator(
                      dotsCount: 3,
                      position: 2,
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
