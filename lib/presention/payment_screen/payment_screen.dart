import 'package:flutter/material.dart';
import 'package:task_1/core/config/app_theme_manager.dart';
import 'package:task_1/core/config/constants.dart';
import 'package:task_1/core/widgets/custom_text_field.dart';
import 'package:task_1/presention/payment_screen/payment_widget.dart';

class PaymentScreen extends StatefulWidget {
  final PageController pageController;
  const PaymentScreen({super.key, required this.pageController});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 56),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/payment_screen.png",
                width: Constants.mediaQuery.width * 0.6,
              ),
              const SizedBox(
                height: 40,
              ),
              const PaymentWidget(
                icon: Icon(Icons.money),
                title: "Cash payment",
                methods: [],
              ),
              const SizedBox(
                height: 14,
              ),
              PaymentWidget(
                  icon: const Icon(Icons.credit_card),
                  title: "Credit/ Debit Card",
                  methods: [
                    Container(
                      padding: const EdgeInsets.only(top: 14, bottom: 15),
                      color: Colors.white,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        height: Constants.mediaQuery.height * 0.28,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/Mastercard.png",
                                  height: 55,
                                ),
                                Image.asset(
                                  "assets/images/Visa_Inc.png",
                                  height: 20,
                                ),
                              ],
                            ),
                            Text(
                              "Credit Name",
                              style: Constants.theme.textTheme.bodySmall
                                  ?.copyWith(
                                      color: AppThemeManager.primaryColor),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 4),
                              child: CustomTextField(
                                hint: "  EX: MOHAMED RAGAB",
                              ),
                            ),
                            Text(
                              "Credit Number",
                              style: Constants.theme.textTheme.bodySmall
                                  ?.copyWith(
                                      color: AppThemeManager.primaryColor),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 6, horizontal: 4),
                              child: CustomTextField(
                                hint: "EX:***** **** **** 5231",
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Expiration Date",
                                      style: Constants.theme.textTheme.bodySmall
                                          ?.copyWith(
                                              color:
                                                  AppThemeManager.primaryColor),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      width: 150,
                                      child: const CustomTextField(
                                        hint: "           02/2026",
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "CVV",
                                      style: Constants.theme.textTheme.bodySmall
                                          ?.copyWith(
                                              color:
                                                  AppThemeManager.primaryColor),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 6, horizontal: 4),
                                      width: 130,
                                      child: const CustomTextField(
                                        hint: "              ****",
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: Constants.mediaQuery.width,
                      color: Colors.white,
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 60),
                        child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                backgroundColor: const Color(0xFFAED198)),
                            child: Text(
                              "Add other card",
                              style: Constants.theme.textTheme.bodyMedium,
                            )),
                      ),
                    )
                  ]),
              const SizedBox(
                height: 14,
              ),
              const PaymentWidget(
                  methods: [], title: "Mobile wallet", icon: Icon(Icons.wallet)),
              const SizedBox(
                height: 14,
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
            ],
          ),
        ),
      ),
    );
  }
}
