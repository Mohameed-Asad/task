import 'package:flutter/material.dart';

class TeacherWidget extends StatefulWidget {
  const TeacherWidget({super.key});

  @override
  State<TeacherWidget> createState() => _TeacherWidgetState();
}

class _TeacherWidgetState extends State<TeacherWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF4F4F4),
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
