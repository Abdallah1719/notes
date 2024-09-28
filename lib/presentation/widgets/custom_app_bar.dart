import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.text, required this.icon, this.onPressed});

  final String text;
  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: beige,
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10, left: 10),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
                color: darkBlue, fontSize: 32, fontWeight: FontWeight.w700),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
                color: darkBlue, borderRadius: BorderRadius.circular(16)),
            height: 45,
            width: 45,
            child: IconButton(
              onPressed: onPressed,
              icon: icon,
            ),
          ),
        ],
      ),
    );
  }
}
