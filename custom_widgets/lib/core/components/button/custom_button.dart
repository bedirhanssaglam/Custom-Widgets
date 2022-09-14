import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_constants.dart';
import '../text/custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double? width;
  final double? height;
  final double? borderRadius;
  final VoidCallback onTap;
  final Color? textColor;
  final Color? buttonColor;
  final Color? borderColor;
  final FontWeight? fontWeight;

  const CustomButton({
    Key? key,
    this.text = "",
    this.width = 300,
    this.height = 40,
    this.buttonColor = AppConstants.deepOrange,
    required this.onTap,
    this.borderRadius = 20,
    this.textColor = Colors.white,
    this.borderColor,
    this.fontWeight = FontWeight.w500,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 5,
        borderRadius: BorderRadius.all(
          Radius.circular(borderRadius!),
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor!,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.08),
                spreadRadius: 2,
                blurRadius: 6,
                offset: const Offset(-3, -3),
              ),
            ],
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          child: Center(
            child: CustomText(
              text,
            ),
          ),
        ),
      ),
    );
  }
}
