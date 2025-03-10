import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditationapp/common/color_extension.dart';
import 'package:meditationapp/common_widget/round_button.dart';
//import 'package:meditationapp/screen/login/startup_screen.dart';

//Página de inicio

class LoginScreen extends StatefulWidget {
  const LoginScreen ({super.key});

  @override
  State <LoginScreen> createState() =>  _LoginScreenState();
}

class  _LoginScreenState extends State <LoginScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: SizedBox (
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              //Imagen decorativa principal
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset( //Imagen principal
                    "assets/img/login_top.png",
                    //meditationapp\assets\img\login_top.png
                    width: double.maxFinite, //Maximo de su contenedor padre
                    fit: BoxFit.fitWidth, //Maximo de su contenedor padre
                    ),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              InkWell(onTap:(){
                                context.pop();
                                },child:Image.asset(
                                  "/assets/img/back.png",
                                  width:55, 
                                  height:55,
                                ),
                              
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height:25,),

                        Text("Bienvenido de regreso",
                          style: TextStyle( 
                            color:TColor.primaryText,
                            fontSize:28, 
                            fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(height:25,),
                          const SizedBox(height:25,),
                      ],
                    ),
                ],
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
                  onPressed:(){}
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

                      TextButton(onPressed: (){
                        //context.push(const LoginScreen());
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
          ),
        ),
      ),
    );
  }
}