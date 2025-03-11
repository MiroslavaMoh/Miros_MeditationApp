import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meditationapp/common/color_extension.dart';
import 'package:meditationapp/common_widget/round_button.dart';
import 'package:meditationapp/common_widget/round_text_field.dart';
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
                                context.pop(); //Regresar al pag anterior
                                },child:Image.asset(
                                  "assets/img/back.png",
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

                          //Btn-Facebook
                          Padding(
                            padding:const EdgeInsets.symmetric(horizontal:20),
                              child: MaterialButton(
                                onPressed: (){},
                                minWidth: double.maxFinite,
                                elevation: 0,
                                color: const Color(0xff8E97FD),
                                height: 60,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 15,),
                                    Image.asset('assets/img/fb.png',width:25, height: 25,),//NO PONER / AL INICIO
                                  const Expanded(
                                    child: Text(
                                      "Continuar con facebook",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                    
                                      ),
                                    ),
                                  ),
                                   const SizedBox(width: 40,),
                                  ],
                                ),

                              
                              ),
                      
                          ),

                          const SizedBox(height:25,),

                          //Btn- Google
                          Padding(
                            padding:const EdgeInsets.symmetric(horizontal:20),
                              child: MaterialButton(
                                onPressed: (){},
                                minWidth: double.maxFinite,
                                elevation: 0,
                                color: Colors.white,
                                height: 60,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(color: TColor. tertiary, width: 1),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  children: [
                                    const SizedBox(width: 15,),
                                    Image.asset('assets/img/google.png',width:25, height: 25,),//NO PONER / AL INICIO
                                  Expanded(
                                    child: Text(
                                      "Continuar con Google",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                    
                                      ),
                                    ),
                                  ),
                                   const SizedBox(width: 40,),
                                  ],
                                ),

                              
                              ),
                      
                          ),
                      ],
                    ),
                ],
              ),

                const SizedBox(height:35),
                Text("O inicia sesión con tu correo eléctronico",
                      textAlign: TextAlign.center,
                      style: TextStyle( 
                        color:TColor.secondaryText,
                        fontSize:14, 
                        fontWeight: FontWeight.w700,
                        ),
                      ),

                const SizedBox(height:35),
                RoundTextField(hintText:"Correo electronico"),
                const SizedBox(height:20),
                RoundTextField(hintText:"Contraseña",obscureText: true,),

                //BTN-Registrarme morado
                RoundButton( //BTN de Common wodgets, recordar importar archivo round_button.dart
                  title:"Iniciar Sesión",
                  onPressed:(){}
                ),

                //Texto de Iniciar sesión, dos colores 2 elementos
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("¿Olvidaste tu contraseña?",
                      textAlign: TextAlign.center,
                      style: TextStyle( 
                        color:TColor.primaryText,
                        fontSize:14, 
                        fontWeight: FontWeight.w600,
                        ),
                      ),
                      

                      const Spacer(),

                      TextButton(onPressed: (){
                        context.push(const LoginScreen());
                      },

                      //const Spacer(),

                      child: Text(
                        "Crear una cuenta nueva",
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