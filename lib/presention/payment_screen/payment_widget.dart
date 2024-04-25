import 'package:flutter/material.dart';

import '../../core/config/app_theme_manager.dart';
import '../../core/config/constants.dart';

class PaymentWidget extends StatefulWidget {
  final List<Widget> methods;
  final String title;
  final Widget icon;
  const PaymentWidget({super.key, required this.methods, required this.title, required this.icon});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  bool isOpened = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color:
            isOpened ? AppThemeManager.primaryColor : const Color(0xFFF3F2F2),
      ),
      child: ExpansionTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 11),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [widget.icon,
              const SizedBox(
                width: 80,
              ),
              Text(
                widget.title,
                style: Constants.theme.textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: isOpened ? Colors.white : const Color(0xFF010B2E)),
              )
            ],
          ),
        ),
        shape: Border.all(color: Colors.transparent, width: 0),
        collapsedShape: Border.all(
          color: Colors.transparent,
          width: 0,
        ),
        collapsedBackgroundColor: const Color(0xFFF3F2F2),
        iconColor: Colors.white,
        collapsedIconColor: const Color(0xFF010B2E),
        onExpansionChanged: (value) {
          isOpened = value;
          setState(() {});
        },
        children: widget.methods,
      ),
    );
  }
}
