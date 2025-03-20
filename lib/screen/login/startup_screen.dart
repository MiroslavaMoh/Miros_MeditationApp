import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditationapp/common/color_extension.dart';
import 'package:meditationapp/common_widget/round_button.dart';
import 'package:meditationapp/screen/login/login_screen.dart';
import 'package:meditationapp/screen/login/sign_up_screen.dart';
import 'package:meditationapp/screen/home/welcome_screen.dart';
//meditationapp\lib\screen\login\login_screen.dart

//Página de inicio

class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State <StartUpScreen> createState() =>  _StartUpScreenState();
}

class  _StartUpScreenState extends State <StartUpScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          //Imagen decorativa principal
          Image.asset( //Imagen principal
            "assets/img/starup_top.png", 
            //"assets\img\starup_top.png"
            width: double.maxFinite, //Maximo de su contenedor padre
            fit: BoxFit.fitWidth, //Maximo de su contenedor padre
            ),
            const Spacer(), //Todo espacio disponible entre elemento

            Text("Somos lo que hacemos",
                  style: TextStyle( 
                    color:TColor.primaryText,
                    fontSize:30, 
                    fontWeight: FontWeight.w700,
                    ),
                  ),

            const SizedBox(height:15),

            Text("Alrededor de mundo se usa la luna para \nla instrospección y la meditación",
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    color:TColor.secondaryText,
                    fontSize:16, 
                    fontWeight: FontWeight.w600,
                    ),
                  ),

            const Spacer(),

            //BTN-Registrarme morado
            RoundButton( //BTN de Common wodgets, recordar importar archivo round_button.dart
              title:"Registrarme",
              onPressed:(){
                //context.push(const WelcomeScreen());
                context.push(const SignUpScreen());
              }
            ),

            //Texto de Iniciar sesión, dos colores 2 elementos
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("¿Ya tienes una cuenta?",
                  textAlign: TextAlign.center,
                  style: TextStyle( 
                    color:TColor.secondaryText,
                    fontSize:14, 
                    fontWeight: FontWeight.w600,
                    ),
                  ),

                  //Conectar el boton para que te envie a login_screen
                  TextButton(onPressed: (){
                    context.push(const LoginScreen());
                  },

                  //const Spacer(),

                  child: Text(
                    "Iniciar sesión",
                    style: TextStyle( 
                    color:TColor.primary,
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