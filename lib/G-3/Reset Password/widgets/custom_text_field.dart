import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/utils/colors.dart';
import 'package:grandizar_customer_app_sajib/G-3/Reset%20Password/widgets/text_style.dart';

class CustomTextField extends StatelessWidget {
  final bool? isCountryPicker;
  final TextEditingController? txtController;
  final String hintText;
  final IconData prefixIcon;
  final String title;
  const CustomTextField(
      {super.key,
      this.txtController,
      required this.hintText,
      required this.prefixIcon,
      required this.title,
      this.isCountryPicker});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        title == '' ? const SizedBox() : Text(title, style: titleStyle),
        SizedBox(
          height: Get.height * 0.01,
        ),
        TextFormField(
          controller: txtController,
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
                : Icon(
                    prefixIcon,
                  ),
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
