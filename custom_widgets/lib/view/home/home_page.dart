import 'package:custom_widgets/core/components/button/custom_button.dart';
import 'package:custom_widgets/core/components/text/custom_text.dart';
import 'package:custom_widgets/core/components/textFormField/custom_text_form_field.dart';
import 'package:custom_widgets/core/extensions/empty_padding.dart';
import 'package:custom_widgets/core/extensions/image_path.dart';
import 'package:flutter/material.dart';
import 'package:custom_widgets/core/components/scaffold/custom_scaffold.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      isScrolling: true,
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            4.h.ph,
            Image.asset(
              'login'.toPng,
              height: 28.h,
            ),
            1.h.ph,
            CustomText(
              'Welcome to Login!',
              textStyle:
                  TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            CustomText(
              'Please login with your information.',
              textStyle: TextStyle(fontSize: 10.sp),
            ),
            8.h.ph,
            CustomTextFormField(
              textEditingController: emailController,
              hintText: 'example@gmail.com',
              fontSize: 15.sp,
              suffixIcon: const Icon(Icons.email),
              onSaved: (value) {},
              textInputType: TextInputType.emailAddress,
              validator: (value) {},
            ),
            2.h.ph,
            CustomTextFormField(
              textEditingController: passwordController,
              isPassword: true,
              hintText: '*********',
              fontSize: 15.sp,
              suffixIcon: const Icon(Icons.lock),
              onSaved: (value) {},
              validator: (value) {},
            ),
            9.h.ph,
            CustomButton(
              onTap: () {},
              text: 'LOGIN',
              height: 7.h,
              width: 70.w,
              fontWeight: FontWeight.w700,
            ),
            1.h.ph,
          ],
        ),
      ),
    );
  }
}
