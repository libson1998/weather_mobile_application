import 'package:flutter/material.dart';

class FormFieldWidget extends StatelessWidget {
  final bool passwordObscure;
  final String? hintText;
  final bool isIconVisible;
  final String? Function(String?)? validator;
  final void Function(String)? onChange;
  final void Function(String?)? onSave;
  final void Function()? onTap;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final InputBorder? disabledBorder;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry? contentPadding;
  final Color? iconColor;
  final Color? fillColor;
  final Widget child;
  final int? maxLine;
  final String? initialValue;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final int? maxLength;
  final bool? enabled;
  final TextStyle? hintStyle;
  final String? prefixText;
  final InputBorder errorBorder;
  final double? prefixSpacing;
  final TextStyle? style;

  const FormFieldWidget(
      {super.key,
      required this.passwordObscure,
      this.hintText,
      required this.isIconVisible,
      this.validator,
      this.onChange,
      this.onSave,
      required this.focusedBorder,
      required this.enabledBorder,
      required this.labelStyle,
      required this.contentPadding,
      this.iconColor = Colors.transparent,
      required this.child,
      this.maxLine = 1,
      this.initialValue,
      this.keyboardType,
      this.controller,
      this.onTap,
      this.prefixIcon,
      this.maxLength,
      this.hintStyle,
      this.enabled,
      required this.errorBorder,
      this.prefixText,
      this.prefixSpacing = 0.0,
      this.disabledBorder,
      this.style,
      this.fillColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(        //todo this code is used to reuse the TextFormField
      height: 40,
      child: TextFormField(
        enabled: enabled,
        maxLength: maxLength,
        controller: controller,
        initialValue: initialValue,
        maxLines: maxLine,
        style: style,
        obscureText: passwordObscure,
        decoration: InputDecoration(
          isDense: true,
          focusedBorder: focusedBorder,
          enabledBorder: enabledBorder,
          disabledBorder: disabledBorder,
          errorBorder: errorBorder,
          focusedErrorBorder: errorBorder,
          hintText: hintText,
          hintStyle: hintStyle,
          labelStyle: labelStyle,
          contentPadding: contentPadding,
          fillColor: fillColor,
          filled: true,
          prefix: SizedBox(
            width: prefixSpacing,
          ),
          prefixIcon: prefixIcon,
          prefixText: prefixText,
          prefixStyle: const TextStyle(color: Colors.black),
          suffixIcon: Visibility(visible: isIconVisible, child: child),
        ),
        validator: validator,
        onChanged: onChange,
        onSaved: onSave,
        keyboardType: keyboardType,
        onTap: onTap,
      ),
    );
  }
}
