import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:task_manager_ui/constants/colors.dart';
import 'package:task_manager_ui/widgets/horizontal_list.dart';

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
        child: Column(
          children: [
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
                  decoration: BoxDecoration(border: Border.all(color: tmGrey)),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tmBGColor,
                      minimumSize: Size(60.0, 60.0),
                      elevation: 2,
                    ),
                  ),
                ),
                Text(
                  'Add List',
                  style: TextStyle(fontSize: 18, color: tmGrey),
                ),
              ]),
            ),
            Container(
              height: 300,
              margin: EdgeInsets.symmetric(vertical: 40),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 80, right: 10),
                    width: 200,
                    child: const Center(
                      child: Text(
                        'List 1',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: tmBlue,
                    ),
                  ),
                  // Container(
                  //   margin: EdgeInsets.symmetric(horizontal: 10),
                  //   width: 200,
                  //   child: const Center(
                  //     child: Text(
                  //       'List 2',
                  //       style: TextStyle(
                  //         fontSize: 18,
                  //         color: Colors.white,
                  //       ),
                  //     ),
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(10.0),
                  //     color: tmRed,
                  //   ),
                  // ),
                  TaskCard(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 200,
                    child: const Center(
                      child: Text(
                        'List 3',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: tmRhythm,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: 200,
                    child: const Center(
                      child: Text(
                        'List 4',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: tmSky,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration:
            BoxDecoration(border: Border(top: BorderSide(color: tmGrey))),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.calendar),
              label: 'calender',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.equals),
              label: 'search',
            ),
          ],
          selectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
