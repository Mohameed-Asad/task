import 'package:flutter/material.dart';
import 'package:task_1/core/widgets/custom_button.dart';
import 'package:task_1/presention/order_screen/order_widget.dart';
import 'package:task_1/presention/order_screen/raw1.dart';
import 'package:task_1/presention/order_screen/raw2.dart';

import '../../core/config/app_theme_manager.dart';
import '../../core/config/constants.dart';

class OrderScreen extends StatelessWidget {

  final PageController pageController;
  const OrderScreen({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 46),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 80,right: 80,bottom: 5),
                child: Image.asset("assets/images/payment.png"),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 25,left: 25),
                child: CustomButton(title: "Invoices details"),
              ),
              const OrderWidget(orderTitle: "Invoice (1) details",rawDetails: RawDetails1(),),
              const OrderWidget(orderTitle: "Invoice (2) details",rawDetails: RawDetails2(),),
              const SizedBox(height: 3,),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                child: CustomButton(title: "Pay now (14,500 EGP)"),
              ),
              Image.asset("assets/images/payment_prosses.png"),
              const SizedBox(height: 5,),
              Container(
                margin: const EdgeInsets.only(bottom: 15,top: 4),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          pageController.previousPage(
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
                          pageController.nextPage(
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
            ],
          ),
        ),
      ),
    );
  }
}
