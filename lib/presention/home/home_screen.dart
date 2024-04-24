import 'package:flutter/material.dart';
import 'package:task_1/presention/subject_screen/subject_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  PageController pageController = PageController();
  bool lastPage = false;

  @override
  Widget build(BuildContext context) {
    return PageView(
        controller: pageController,
        onPageChanged: (value) {
          if(value == 2) {
            lastPage = true;
          } else {
            lastPage = false;
          }
          setState(() {});
        },
   children : [
     SubjectView()
   ] );
  }
}
