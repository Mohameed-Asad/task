import 'package:flutter/material.dart';
import 'package:task_1/core/widgets/custom_text_field.dart';
import 'package:task_1/presention/teacher_screen/teacher_widget.dart';

import '../../core/config/app_theme_manager.dart';
import '../../core/config/constants.dart';

class TeacherScreen extends StatefulWidget {
  const TeacherScreen({super.key});

  @override
  State<TeacherScreen> createState() => _TeacherScreenState();
}

class _TeacherScreenState extends State<TeacherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          height: 183,
          width: 428,
          decoration: const BoxDecoration(
              color: AppThemeManager.primaryColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(55),
                bottomLeft: Radius.circular(55),
              )),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Very good",
                    style: Constants.theme.textTheme.titleLarge?.copyWith(
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Please choose your preferred teachers.",
                    style: Constants.theme.textTheme.titleMedium
                        ?.copyWith(fontSize: 19),
                  ),
                ]),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: CustomTextField(
            hint: "Search your preferred teachers",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: GridView(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 1,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            children: [
              TeacherWidget(),
              TeacherWidget(),
              TeacherWidget(),
              TeacherWidget(),
              TeacherWidget(),
              TeacherWidget(),
            ],
          ),
        ),
      ]),
    );
  }
}
