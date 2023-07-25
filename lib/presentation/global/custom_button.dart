import '../enums/button_sizes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final ButtonSize? buttonSize;
  final Color? color;
  final VoidCallback? onTap;

  const CustomButton({
    Key? key,
    required this.title,
    this.buttonSize = ButtonSize.medium,
    this.color = Colors.blue,
    this.onTap,
  }) : super(key: key);

  double _getButtonHeight(ButtonSize buttonSize) {
    switch (buttonSize) {
      case ButtonSize.small:
        return 40.0;
      case ButtonSize.medium:
        return 60.0;
      case ButtonSize.large:
        return 80.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Ink(
      height: _getButtonHeight(ButtonSize.medium),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      width: double.infinity,
      child: InkWell(
        borderRadius: BorderRadius.circular(15.0),
        onTap: onTap,
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
