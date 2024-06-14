import 'package:flutter/material.dart';

import '../core/constants/k_colors.dart';
import '../core/constants/k_textStyle.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';


class CustomLoginTextField extends StatelessWidget {
  const CustomLoginTextField(
      {super.key,
        required this.text,
        this.controller,
        this.hintText,
        this.color,
        this.fontSize,
        this.fontWeight,
        this.style,
        this.hintColor,
        this.validator});

  final String text;
  final TextEditingController? controller;
  final String? hintText;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextStyle? style;
  final Color? hintColor;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          style: TextStyle(
              color: color ?? MyColors.black,
              fontSize: fontSize ?? MyTextSTyles.greyButtonText.fontSize,
              fontWeight:
              fontWeight ?? MyTextSTyles.greyButtonText.fontWeight)
              .merge(style),
        ),

        ///need to do gap
        const SizedBox(
          height: 10,
        ),

        CustomTextFormField(
          validator: validator,
          enabled: true,
          controller: controller,
          hintText: hintText,
          hintStyle: TextStyle(
              color: hintColor ?? MyColors.grey),
        )
      ],
    );
  }
}
