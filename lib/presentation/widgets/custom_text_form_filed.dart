import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key, required this.hint, required this.maxline , this.onSaved, this.onChanged});
  final String hint;
  final int maxline;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'filed is required';
        } else {
          return null;
        }
      },
      onChanged:onChanged ,
      onSaved:onSaved ,
      cursorColor: darkBlue,
      maxLines: maxline,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: darkBlue),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(darkBlue),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? darkBlue),
    );
  }
}
