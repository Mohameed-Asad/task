import 'package:flutter/material.dart';
import 'package:task_1/core/config/app_theme_manager.dart';
import 'package:task_1/core/config/constants.dart';
import 'package:task_1/core/widgets/custom_button.dart';
import 'package:task_1/presention/subject_screen/subject_widget.dart';

class SubjectView extends StatefulWidget {
  final PageController pageController;

  const SubjectView({super.key, required this.pageController});

  @override
  State<SubjectView> createState() => _SubjectViewState();
}

class _SubjectViewState extends State<SubjectView> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            children: [
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
              padding: const EdgeInsets.symmetric(vertical: 27, horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Welcome",
                        style: Constants.theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Mohamed Ragab",
                        style: Constants.theme.textTheme.titleLarge?.copyWith(
                            shadows: [
                              const Shadow(
                                  color: Colors.black12,
                                  blurRadius: 1.5,
                                  offset: Offset(0, 4))
                            ]),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Please choose your subjects",
                    style: Constants.theme.textTheme.titleMedium,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            height: 590,
            width: 370,
            decoration: BoxDecoration(
                color: const Color(0xFFF3F3F3),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Column(
                children: [
                  Text(
                    "Please select subjects",
                    style: Constants.theme.textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Expanded(
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 1.33,
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      children: const [
                        SubjectWidget(
                            imagePath: "assets/images/math.png", title: "Math"),
                        SubjectWidget(
                            imagePath: "assets/images/english.png",
                            title: "English"),
                        SubjectWidget(
                            imagePath: "assets/images/bio.png", title: "Biology"),
                        SubjectWidget(
                            imagePath: "assets/images/france.png",
                            title: "France"),
                        SubjectWidget(
                            imagePath: "assets/images/geo.png",
                            title: "Geography"),
                        SubjectWidget(
                            imagePath: "assets/images/history.png",
                            title: "History"),
                        SubjectWidget(
                            imagePath: "assets/images/chimstry.png",
                            title: "Chemistry"),
                        SubjectWidget(
                            imagePath: "assets/images/france.png",
                            title: "France"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 85, right: 85, bottom: 20, top: 12),
            child: CustomButton(
              title: "Next",
              onPressed: () {
                widget.pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut);
              },
            ),
          )
        ]),
      ),
    );
  }
}
