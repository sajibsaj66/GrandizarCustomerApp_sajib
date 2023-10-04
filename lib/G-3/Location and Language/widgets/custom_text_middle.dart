import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grandizar_customer_app_sajib/G-3/Location%20and%20Language/widgets/text_style.dart';

class TextInTheMiddle extends StatelessWidget {
  final String text;
  const TextInTheMiddle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            height: 1.5,
            color: const Color(0xFFC4C4C4),
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          text,
          style: titleStyle.copyWith(
            fontSize: 15,
          ),
        ),
        SizedBox(height: 10.h),
        Expanded(
          child: Container(
            height: 1.5,
            color: const Color(0xFFC4C4C4),
          ),
        ),
      ],
    );
  }
}