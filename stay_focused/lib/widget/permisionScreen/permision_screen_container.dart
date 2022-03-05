import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class PermisionScreenContainer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(56,0,0,0),
      child: Container(
        height: 52,
        width: 290,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 5,left: 5),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,  // add this
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                    'assets/image/stay_logo.png',
                   width: 40,
                    height: 40,
                    // fit:BoxFit.fill
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 13,top: 5),
                child: Text("Stay Focused" , style: TextStyle(fontWeight: FontWeight.w600),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PermisionContainer extends StatefulWidget {
  // const PermisionContainer({Key? key}) : super(key: key);
  @override
  _PermisionContainerState createState() => _PermisionContainerState();
}
class _PermisionContainerState extends State<PermisionContainer> {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(56,0,0,0),
      child: Container(
        height: 42,
        width: 290,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13,top: 5),
              child: Text("Permit usage access" , style: TextStyle(fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 85),
              child: Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                    print(isSwitched);
                  }
                  );
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.lightGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
