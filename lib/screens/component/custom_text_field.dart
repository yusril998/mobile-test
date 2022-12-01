import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geektest/utils/colors.dart';

class CustomTextFieldV2 extends StatelessWidget {
  final TextEditingController controller;
  final Function()? onTap;
  final String hint;
  final int? minLines;
  final int? maxLines;
  final bool? readOnly;
  final FormFieldValidator<String>? validation;
  final TextInputType? keyboardType;
  final TextInputAction? inputAction;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? formatInput;
  const CustomTextFieldV2(
      {Key? key,
      required this.controller,
      this.onTap,
      required this.hint,
      this.readOnly,
      this.minLines,
      this.maxLines,
      this.validation,
      this.keyboardType,
      this.inputAction,
      this.suffixIcon,
      this.formatInput})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      readOnly: readOnly ?? false,
      onTap: onTap,
      maxLines: maxLines,
      minLines: minLines,
      keyboardType: keyboardType,
      textInputAction: inputAction,
      validator: validation,
      inputFormatters: formatInput ?? null,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: AppColor.darkGrey, fontSize: 12),
          border: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColor.fontGrey),
            borderRadius: const BorderRadius.all(
              const Radius.circular(6),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColor.fontGrey),
            borderRadius: const BorderRadius.all(
              const Radius.circular(6),
            ),
          ),
          fillColor: AppColor.white,
          filled: true,
          focusColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          suffixIcon: suffixIcon ?? null),
    );
  }
}
