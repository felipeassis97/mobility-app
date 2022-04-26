import 'package:flutter/material.dart';
import 'package:mobility_app/shared/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  String label;
  IconData? icon;

  CustomTextField({Key? key, required this.label, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: AppColors.neutralColorLowLight),

          suffixIcon: icon != null ? Icon(icon) : null,

          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          //Focus Field
          // focusedBorder: const OutlineInputBorder(
          //   borderSide: BorderSide(width: 1.0, color: AppColors.deepBlue),
          // ),
          //Error Field
          focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: AppColors.feedbackColorHelperPure,
            ),
          ),
          alignLabelWithHint: true,
        ),
      ),
    );
  }
}
