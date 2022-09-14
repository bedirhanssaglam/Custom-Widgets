import 'package:custom_widgets/core/components/text/custom_text.dart';
import 'package:custom_widgets/core/constants/app_constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends AppBar {
  final String? textTitle;
  final TextStyle? textStyle;
  final IconData? leadingIconData;

  CustomAppBar({
    Key? key,
    this.textTitle,
    this.textStyle,
    this.leadingIconData,
  }) : super(key: key);

  @override
  State<AppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: AppBar(
          backgroundColor: AppConstants.deepOrange,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(8),
            ),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(widget.leadingIconData),
          ),
          centerTitle: true,
          elevation: 0,
          titleTextStyle: widget.textStyle,
          title: CustomText(widget.textTitle ?? 'Custom Widgets'),
        ),
      ),
    );
  }
}
