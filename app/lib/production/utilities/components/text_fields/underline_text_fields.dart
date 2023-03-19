import 'package:app/production/utilities/themes/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef StringCallback = void Function(String value);
typedef ValidatorCallback = String? Function(String? value);

class PrimaryUnderlineTextField extends StatelessWidget {
  const PrimaryUnderlineTextField({
    Key? key,
    this.hintText,
    this.textInputAction,
    this.initialValue,
    this.onChanged,
    this.validator,
    this.isDense,
    this.keyboardType,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength,
    this.isTransparent = false,
    this.controller,
    this.inputFormatters,
    this.readOnly = false,
  }) : super(key: key);
  final String? hintText;
  final String? initialValue;
  final bool readOnly;
  final TextInputAction? textInputAction;
  final ValidatorCallback? validator;
  final StringCallback? onChanged;
  final TextInputType? keyboardType;
  final bool? isDense;
  final int? maxLength;
  final TextEditingController? controller;
  final TextCapitalization textCapitalization;
  final List<TextInputFormatter>? inputFormatters;
  final bool isTransparent;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      initialValue: initialValue,
      textCapitalization: textCapitalization,
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      style: TextStyle(fontSize: 20.sp),
      validator: validator,
      maxLength: maxLength,
      decoration: InputDecoration(
        hintText: hintText,
        isDense: isDense,

        // counterText: "",
        filled: true,
        fillColor:
            isDarkMode(context) ? Colors.transparent : Theme.of(context).scaffoldBackgroundColor,
        hintStyle: TextStyle(
          color: isDarkMode(context) ? Colors.grey : const Color(0xff585757),
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
        errorStyle: TextStyle(
          color: const Color(0xffFF0000),
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
        // enabledBorder: const UnderlineInputBorder(),
        // focusedBorder: const UnderlineInputBorder(
        //   borderSide: BorderSide(
        //     color: Color(0xffEA5B27),
        //   ),
        // ),
      ),
    );
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}
