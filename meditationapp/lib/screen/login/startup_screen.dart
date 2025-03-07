import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditationapp/common/color_extension.dart';

//Página de inicio

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State <StartUpScreen> createState() =>  _StartUpScreenState();
}

class  _StartUpScreenState extends State <StartUpScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "meditationapp/android/assets/img/starup_top.png", 
            width: double.maxFinite, 
            fit: BoxFit.fitWidth,
            ),
            const Spacer(),

            const Spacer(),

              Row(
                children: [
                  Text("¿Ya tienes una cuenta?",
                  style: TextStyle( 
                    color:TColor.secondaryText,
                    fontSize:14, 
                    fontWeight: FontWeight.w600,
                    ),
                  ),

                  TextButton(onPressed: (){

                  },child: Text(
                    "Inicr seción",
                    style: TextStyle( 
                    color:TColor.secondaryText,
                    fontSize:14, 
                    fontWeight: FontWeight.w600,
                    ),
                  ),

                  ),
                ],
              ),

            const Spacer(),


          ],
      )
    );
  }
}