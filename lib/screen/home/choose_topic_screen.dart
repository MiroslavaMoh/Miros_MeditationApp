//import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart'; //Importar libreria para masonary
import 'package:meditationapp/common/color_extension.dart';
import 'package:meditationapp/screen/home/reminders_screen.dart'; 


class ChooseTopicScreen extends StatefulWidget {
  const ChooseTopicScreen({super.key});

  @override
  State<ChooseTopicScreen> createState() => _ChooseTopicScreenState();
}

class _ChooseTopicScreenState extends State<ChooseTopicScreen> {
  List dataArr = [
    {
    "image":"assets/img/c1.png",
    "title":"Reducir éstres",
    "color":"8E97FD",
    "text_color":"FFECCC",
    },
    {
    "image":"assets/img/c2.png",
    "title":"Mejorar animo",
    "color":"FA6E5A",
    "text_color":"FFECCC",
    },
    {
      "image": "assets/img/c3.png",
      "title": "Reducir ansiedad",
      "color": "FEB18F",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c4.png",
      "title": "Aumentar felicidad",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c5.png",
      "title": "Crecimiento personal",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c6.png",
      "title": "Sueño mejor",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c1.png",
      "title": "Reducir estres",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c2.png",
      "title": "Mejorar animo",
      "color": "FA6E5A",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c4.png",
      "title": "Aumentar felicidad",
      "color": "FFCF86",
      "text_color": "3F414E",
    },
    {
      "image": "assets/img/c5.png",
      "title": "Crecimiento personal",
      "color": "6CB28E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c6.png",
      "title": "Sueño mejor",
      "color": "3F414E",
      "text_color": "FFECCC",
    },
    {
      "image": "assets/img/c1.png",
      "title": "Reducir estres",
      "color": "8E97FD",
      "text_color": "FFECCC",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
              bottom: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        
                        Expanded(
                          child: 
                          
                          Text(
                            "¿Qué te trae a",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 28,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "la luna silenciosa?",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Escoge un tema ",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 20,
                      ),
                    ),
                    //SizedBox(height: 15,),
                  ],
                ),
              )),

          Expanded(
            //Dependiendo si es index es par o no varia la altura del tile, esta varia en proporción con la anchura del objeto
            child:MasonryGridView.count(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal:12),
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              itemCount: dataArr.length,//Como lens del array de arriba
              itemBuilder: (context, index) {                
                   var height = index % 4 == 0 || index % 4 == 2 
                    ? context.width * 0.55 
                    : context.width * 0.45;

                  var cObj = dataArr[index] as Map? ?? {};//Tomar datosde array
                  return InkWell(
                    borderRadius: BorderRadius.circular(10),
                    onTap: (){
                      context.push(const RemindersScreen());
                    },


                    child: Container(
                      height: height,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: HexColor.formHex(cObj["color"]), //Usar funcion de convertor hex a ARGB
                        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(10),topRight: Radius.circular(10)),
                              child: Image.asset (cObj["image"], width:double.maxFinite, fit:BoxFit.fitWidth)
                              ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text( 
                                          cObj["title"], maxLines: 2,style: TextStyle(
                                          color: HexColor.formHex(cObj["text_color"]),
                                          fontSize: 18,
                                          fontWeight: FontWeight.w700,
                                        
                                        ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                  );
              },
            ), 
          
          ),
        ],
      ),
    );
  }
}