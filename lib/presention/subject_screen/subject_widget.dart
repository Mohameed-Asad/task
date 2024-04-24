import 'package:flutter/material.dart';
import 'package:task_1/core/config/constants.dart';

class SubjectWidget extends StatefulWidget {
  final String imagePath;
  final String title;

  const SubjectWidget(
      {super.key, required this.imagePath, required this.title});

  @override
  State<SubjectWidget> createState() => _SubjectWidgetState();
}

class _SubjectWidgetState extends State<SubjectWidget> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isClicked = !isClicked;
        setState(() {});
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
            border: Border.all(
              color: const Color(0xFFD9D9D9),
            )),
        child: !isClicked
            ? Column(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 90,
                    child: AspectRatio(
                      aspectRatio: 1.82,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12)),
                        child: Image.asset(
                          widget.imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    widget.title,
                    style: Constants.theme.textTheme.titleMedium?.copyWith(
                        color: const Color(0xFF010B2E),
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            : Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 90,
                        child: AspectRatio(
                          aspectRatio: 1.82,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12)),
                            child: Image.asset(
                              widget.imagePath,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        widget.title,
                        style: Constants.theme.textTheme.titleMedium?.copyWith(
                            color: const Color(0xFF010B2E),
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  Container(
                    width: 202,
                      decoration: BoxDecoration(
                        color: const Color(0xFF03751C).withOpacity(0.3),
                        borderRadius:  BorderRadius.circular(12)
                      ),
                      child: Image.asset("assets/images/Vector.png")),
                ],
              ),
      ),
    );
  }
}
