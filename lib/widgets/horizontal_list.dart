import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_manager_ui/constants/colors.dart';
import 'package:task_manager_ui/widgets/todo_card.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 200,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'My Tasks',
                      style: TextStyle(color: Colors.white, fontSize: 24.0),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Colors.white,
              thickness: 2.0,
              indent: 60.0,
            ),
            TodoCard(),
            TodoCard(),
            TodoCard(),
            TodoCard(),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: tmRed,
      ),
    );
  }
}
