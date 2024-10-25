import 'package:flutter/material.dart';
import 'package:todoapp/appthem.dart';

class CustomElevetedBotton extends StatelessWidget {
  CustomElevetedBotton(
      {super.key, required this.label, required this.omPressed});
  String label;
  VoidCallback omPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize: Size(MediaQuery.sizeOf(context).width, 52)),
        onPressed: omPressed,
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: Appthem.white, fontWeight: FontWeight.w400),
        ));
  }
}
