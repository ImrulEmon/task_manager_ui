import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_manager_ui/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tmBGColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
          icon: const Icon(
            FontAwesomeIcons.diceD20,
            size: 40,
          ),
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 40.0),
            child: Row(children: <Widget>[
              Expanded(
                child: Divider(
                  color: Colors.black,
                  height: 50.0,
                  endIndent: 50.0,
                ),
              ),
              Text(
                "Tasks ",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2.0,
                ),
              ),
              Text(
                "Lists",
                style: TextStyle(color: tmGrey, fontSize: 30),
              ),
              Expanded(
                child: Divider(
                  color: Colors.black,
                  height: 50.0,
                  indent: 50.0,
                ),
              ),
            ]),
          ),
          Container(
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(bottom: 25.0),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.blueAccent)),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: tmBGColor,
                      minimumSize: Size(60.0, 60.0)),
                ),
              ),
              Text(
                'Add List',
                style: TextStyle(fontSize: 18, color: tmGrey),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
