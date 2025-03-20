import 'package:flutter/material.dart';
import 'package:meditationapp/common/color_extension.dart';
import 'package:meditationapp/common_widget/round_button.dart';
import 'package:meditationapp/screen/home/reminders_screen.dart';
import 'package:meditationapp/screen/home/choose_topic_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffBE97FD),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            "assets/img/welcome.png", width: context.width ,fit: BoxFit.fitWidth,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SafeArea(
              child: Column(
                children: [

                  const SizedBox(height: 15,),

                  Image.asset("assets/img/logo.png", width: context.width * 0.5),

                  const SizedBox(height: 50,),

                  Text(
                      "Bievenido/a",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 8,),

                    Text(
                      "a Silent Moon",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40
                      ),
                    ),

                    const SizedBox(height: 25,),

                    Text(
                      "Explora y encuentrate a ti mismo mientras meditas.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),
                    ),

                    const Spacer(),
                    RoundButton(
                      title: "Inicicemos",
                      type: RoundButtonType.secondary, 
                      onPressed: (){
                        context.push(const ChooseTopicScreen());
                      }
                      ),

                    const SizedBox(height: 25,),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}