import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:task_1/core/config/app_theme_manager.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final double? width;
  final double? height;
  final Widget? icon;
  final Color? color;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.title,
    this.fontSize = 18,
    this.color,
    this.height,
    this.icon,
    this.onPressed,
    this.width,
  });

  Widget customButton(
      BuildContext context,
      ) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Bounceable(
        onTap: onPressed,
        child: Container(
          width: width ?? MediaQuery.of(context).size.width,
          height: height ?? MediaQuery.of(context).size.height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: AppThemeManager.primaryColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                maxLines: 2,
                style: theme.textTheme.titleMedium
              ),
              const SizedBox(width: 10),
              if (icon != null)
                icon!,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return customButton(context);
  }
}