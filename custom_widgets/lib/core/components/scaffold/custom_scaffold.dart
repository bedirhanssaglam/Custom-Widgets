import 'package:custom_widgets/core/extensions/image_path.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/app_constants.dart';
import '../appBar/custom_app_bar.dart';

class CustomScaffold extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget body;
  final FloatingActionButton? floatingActionButton;
  final bool isScrolling;
  final String? appBarTitle;

  const CustomScaffold({
    Key? key,
    required this.body,
    this.floatingActionButton,
    this.padding,
    this.isScrolling = false,
    this.appBarTitle = 'Custom Widgets',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.primaryColor,
      appBar: CustomAppBar(
        leadingIconData: Icons.menu,
      ),
      body: Padding(
        padding: padding ??
            EdgeInsets.symmetric(
              horizontal: 5.w,
            ),
        child: isScrolling
            ? SingleChildScrollView(
                child: body,
              )
            : body,
      ),
      floatingActionButton: floatingActionButton,
    );
  }
}
