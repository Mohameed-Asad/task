import 'package:flutter/material.dart';
import 'package:task_1/presention/done_pay/done_pay_screen.dart';
import 'package:task_1/presention/payment_screen/payment_screen.dart';
import 'package:task_1/presention/subject_screen/subject_screen.dart';
import 'package:task_1/presention/teacher_screen/teacher_screen.dart';

import '../order_screen/order_screen.dart';

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
   children : [
     SubjectView(pageController: pageController,),
     TeacherScreen(pageController: pageController,),
     OrderScreen(pageController: pageController),
     PaymentScreen(pageController: pageController,),
     DonePayScreen(pageController: pageController)
   ] );
  }
}
