import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../constants/app_constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final bool isPassword;
  final Function(String?)? onSaved;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final Function(String?)? validator;
  final double? borderRadius;
  final int? maxLines;
  final TextInputType? textInputType;
  final Color? prefixIconColor;
  final Color? backgroundColor;
  final String? labelText;
  final double? fontSize;
  TextEditingController? textEditingController;
  final double? horizontalPadding;
  final TextStyle? hintStyle;

  CustomTextFormField({
    Key? key,
    this.hintText,
    this.isPassword = false,
    this.onSaved,
    this.prefixIcon,
    this.textEditingController,
    this.validator,
    this.borderRadius = 10,
    this.textInputType = TextInputType.text,
    this.backgroundColor = AppConstants.lightOrange,
    this.prefixIconColor,
    this.suffixIcon,
    this.maxLines = 1,
    this.fontSize = 20,
    this.labelText,
    this.horizontalPadding = 10,
    this.hintStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding!),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            maxLines: maxLines!,
            controller: textEditingController,
            textAlignVertical: TextAlignVertical.center,
            keyboardType: textInputType,
            obscureText: isPassword,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: GoogleFonts.poppins(textStyle: hintStyle),
              labelText: labelText,
              prefixIconColor: prefixIconColor,
              filled: true,
              fillColor: backgroundColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius!)),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius!)),
                  borderSide: const BorderSide(
                      color: AppConstants.primaryColor, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius!)),
                  borderSide: const BorderSide(
                      color: AppConstants.primaryColor, width: 1)),
              disabledBorder: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius!)),
                  borderSide: const BorderSide(
                      color: AppConstants.primaryColor, width: 1)),
            ),
            onSaved: onSaved,
          ),
        ],
      ),
    );
  }
}
