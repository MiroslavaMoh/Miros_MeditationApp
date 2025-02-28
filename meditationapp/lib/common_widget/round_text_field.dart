
import 'package:flutter/material.dart';

class RoundTextField extends StatelessWidget {
  final String hintText; //Miros- tipo de variable - tipo de dato - nombre de variable
  final TextEditingController controller; //miros-es una variable inmodificable una vez ingresada
  final TextInputType? keyboardType; //Miros-el ? significa que puede null la variable
  final bool? obscureText;
  final Widget? right;

  const RoundTextField({super.key, required this.hintText, required this.controller, this.keyboardType, this.obscureText, this.right});

  @override
  Widget build(BuildContext context) {
    return Container(
      height:60,
    );
  }
}