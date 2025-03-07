
import 'package:flutter/material.dart';
import 'package:meditationapp/common/color_extension.dart';

//meditationapp\lib\common\color_extension.dart

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
      margin:const EdgeInsets.symmetric(horizontal:20),
      padding: const EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        color: TColor.txtBG,
        borderRadius: BorderRadius.circular(15)
        
        ),
        child: TextField(  
          controller: controller, //instancia que actualiza el campo 
          keyboardType:keyboardType, //Tipo de daros recibidos
          obscureText:obscureText ?? false, //Tipo Bool para esconder contraseñas, en esta caso esta desactivado
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 16
          ),
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.symmetric(horizontal: 20),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: hintText,
            suffixIcon: right,
            hintStyle: TextStyle(
              color:TColor.secondaryText, 
              fontSize: 16
              ),
          )
          ),
    );
  }
}