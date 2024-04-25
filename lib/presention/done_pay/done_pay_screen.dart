import 'package:flutter/material.dart';
import 'package:task_1/core/config/constants.dart';

class DonePayScreen extends StatelessWidget {
  final PageController pageController;

  const DonePayScreen({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: Constants.mediaQuery.width,
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Image.asset("assets/images/finished.png"),
            const SizedBox(
              height: 36,
            ),
            Image.asset("assets/images/complete.png"),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "THANK YOU!",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                  color: Color(0xFF03751C)),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Your reservation is being confirmed",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF03751C)),
            ),
            const SizedBox(height: 45),
            InkWell(
              onTap: () {
                pageController.jumpToPage(pageController.initialPage);
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text("Browse Home"),
              ),
            ),
            const SizedBox(height: 50),
            Image.asset("assets/images/payment_prosses.png"),
          ]
        ),
      ),
    );
  }
}
