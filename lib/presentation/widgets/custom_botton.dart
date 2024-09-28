import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({super.key, this.isLoading = false, this.onTap});
  final bool isLoading;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: darkBlue,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: isLoading
                ? const SizedBox(
                    height: 25,
                    width: 25,
                    child: CircularProgressIndicator(
                      color: darkBlue,
                    ),
                  )
                : const Text(
                    'Add',
                    style: TextStyle(
                        color: beige,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
      ),
    );
  }
}
