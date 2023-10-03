import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../index.dart';
import 'text_style.dart';

class CustomTextField extends StatelessWidget {
  final bool? isCountryPicker;
  final TextEditingController? txtController;
  final String hintText;
  final IconData? prefixIcon;
  final String title;
  final Widget? suffixWidget;
  final bool? obscureText;
  const CustomTextField(
      {super.key,
      this.txtController,
      required this.hintText,
      this.prefixIcon,
      required this.title,
      this.isCountryPicker,
      this.suffixWidget,
      this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == '' ? const SizedBox() : Text(title, style: titleStyle),
        SizedBox(height: 10.h),
        TextFormField(
          controller: txtController,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            prefixIcon: isCountryPicker ?? false
                ? CountryCodePicker(
                    onChanged: (CountryCode countryCode) {
                      print("New Country selected: $countryCode");
                    },
                    initialSelection: 'SA',
                    favorite: const ['+966', 'SA'],
                    showCountryOnly: false,
                    showOnlyCountryWhenClosed: false,
                    alignLeft: false,
                  )
                : prefixIcon == null
                    ? null
                    : Icon(
                        prefixIcon,
                      ),
            suffixIcon: suffixWidget,
            hintText: hintText,
            hintStyle: titleStyle.copyWith(fontSize: 15),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            fillColor: AppColors.fadeBlue,
            filled: true,
          ),
        ),
      ],
    );
  }
}

class CustomMultilineField extends StatelessWidget {
  const CustomMultilineField(
      {super.key,
        required this.hintText,
        this.borderRadius = 15,
        this.suffixIcon});

  final double borderRadius;
  final String hintText;
  final Icon? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 130.h,
        margin: EdgeInsets.only(right: w * 0.010),
        padding: EdgeInsets.only(left: w * 0.04, right: w * 0.010),
        decoration: BoxDecoration(
            color: AppColors.awashColor,
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 10,
            decoration: InputDecoration(
                hintStyle: const TextStyle(fontSize: 14),
                border: InputBorder.none,
                hintText: hintText,
                suffixIcon: suffixIcon),
          ),
        ),
      ),
    );
  }
}
