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
  int bookedNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          height: Constants.mediaQuery.height * 0.2,
          width: Constants.mediaQuery.width,
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
                    textAlign: TextAlign.center,
                  ),
                ]),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24, right: 24, bottom: 9),
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
            padding: const EdgeInsets.only(left: 30 , right: 30 , top : 10, bottom: 20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.97,
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 13),
            children: [
              TeacherWidget(
                bookedNumber: bookedNumber,
                onClicked: onClicked,
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamedd_ali.png",
                jobTitle: "Math subject",
              ),
              TeacherWidget(
                bookedNumber: bookedNumber,
                onClicked: onClicked,
                name: "MR. Ahmed Ali",
                imagePath: "assets/images/Ahmed_Ali.png",
                jobTitle: "English subject",
              ),
              TeacherWidget(
                bookedNumber: bookedNumber,
                onClicked: onClicked,
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali_en.png",
                jobTitle: "English subject",
              ),
              TeacherWidget(
                bookedNumber: bookedNumber,
                onClicked: onClicked,
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali.png",
                jobTitle: "Math subject",
              ),
              TeacherWidget(
                bookedNumber: bookedNumber,
                onClicked: onClicked,
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali_en2.png",
                jobTitle: "English subject",
              ),
              TeacherWidget(
                bookedNumber: bookedNumber,
                onClicked: onClicked,
                name: "MR. Mohamed Ali",
                imagePath: "assets/images/mohamed_ali_math.png",
                jobTitle: "Math subject",
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 15,top: 7),
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
  int onClicked(int bookNumber) {
    int result = bookedNumber + bookNumber;
    setState(() {});
    return bookedNumber = result;
  }
}
