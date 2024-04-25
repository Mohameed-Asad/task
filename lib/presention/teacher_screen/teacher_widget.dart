import 'package:flutter/material.dart';
import 'package:task_1/core/config/app_theme_manager.dart';
import 'package:task_1/core/config/constants.dart';

typedef bookedFunction = int Function(int);
class TeacherWidget extends StatefulWidget {
  final String imagePath;
  final String name;
  final String jobTitle;
  final bookedFunction onClicked;
  final int bookedNumber;

  const TeacherWidget(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.jobTitle, required this.onClicked, required this.bookedNumber,
      });

  @override
  State<TeacherWidget> createState() => _TeacherWidgetState();
}

class _TeacherWidgetState extends State<TeacherWidget> {
  bool isBooked = false;
  int increaseBooked = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xFFF4F4F4),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: Border.all(
                  color: isBooked
                      ? AppThemeManager.secColor
                      : const Color(0xFFF4F4F4))),
          child: Padding(
            padding: const EdgeInsets.all(6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(widget.imagePath),
                Text(
                  widget.name,
                  style: Constants.theme.textTheme.bodyMedium,
                ),
                Text(
                  "4500",
                  style: Constants.theme.textTheme.bodySmall,
                ),
                Text(
                  widget.jobTitle,
                  style: Constants.theme.textTheme.bodySmall
                      ?.copyWith(color: Colors.black54),
                ),
                GestureDetector(
                  onTap: () {
                    isBooked = !isBooked;
                    if (isBooked) {
                      increaseBooked++;
                      widget.onClicked(
                        increaseBooked
                      );
                    } else {
                      increaseBooked--;
                      widget.onClicked(increaseBooked);
                    }
                    setState(() {});
                  },
                  child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      decoration: BoxDecoration(
                          color: isBooked
                              ? AppThemeManager.secColor
                              : AppThemeManager.primaryColor,
                          borderRadius: BorderRadius.circular(4)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          isBooked
                              ? Image.asset("assets/images/booked.png")
                              : Image.asset("assets/images/unbooked.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            isBooked ? "Booked" : "Book",
                            style: Constants.theme.textTheme.displayMedium,
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
        if (isBooked)
          Positioned(
              top: -12,
              left: 120,
              child: Container(
                alignment: Alignment.center,
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    color: AppThemeManager.secColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "$increaseBooked",
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              )),
      ],
    );
  }
}
