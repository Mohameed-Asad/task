import 'package:flutter/material.dart';
import 'package:task_1/core/widgets/custom_text_field.dart';
import 'package:task_1/presention/teacher_screen/teacher_widget.dart';
import '../../core/config/app_theme_manager.dart';
import '../../core/config/constants.dart';

class TeacherScreen extends StatefulWidget {
  final PageController pageController;

  const TeacherScreen({super.key, required this.pageController});

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
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 17),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.97,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            children: const [
              TeacherWidget(
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamedd_ali.png",
                jobTitle: "Math subject",
              ),
              TeacherWidget(
                name: "MR. Ahmed Ali",
                imagePath: "assets/images/Ahmed_Ali.png",
                jobTitle: "English subject",
              ),
              TeacherWidget(
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali_en.png",
                jobTitle: "English subject",
              ),
              TeacherWidget(
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali.png",
                jobTitle: "Math subject",
              ),
              TeacherWidget(
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali_en2.png",
                jobTitle: "English subject",
              ),
              TeacherWidget(
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali_math.png",
                jobTitle: "Math subject",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    widget.pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(left: 28, right: 10),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xFFE3E3E3)),
                    child: Text("Back",
                        style: Constants.theme.textTheme.bodyMedium),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    widget.pageController.nextPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 28),
                    padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppThemeManager.primaryColor),
                    child: Text(
                      "Confirm",
                      style: Constants.theme.textTheme.bodyMedium
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
