import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meditationapp/common/color_extension.dart';
import 'package:meditationapp/common_widget/round_button.dart';
import 'package:meditationapp/common_widget/circular_button.dart';

class RemindersScreen extends StatefulWidget {
  const RemindersScreen({super.key});

  @override
  State<RemindersScreen> createState() => _RemindersScreenState();
}

class _RemindersScreenState extends State<RemindersScreen> {

List dayArr =[
  {"name" : "D", "is_select":false},
  {"name" : "L", "is_select":false},
  {"name" : "M", "is_select":false},
  {"name" : "M", "is_select":false},
  {"name" : "J", "is_select":false},
  {"name" : "V", "is_select":false},
  {"name" : "S", "is_select":false},
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 180,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical:30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    Text(
                      "¿En qué horario le gustaría meditar?",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Puede ser cuando quiera",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 35),

                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: const Color(0xfff5f5f9),
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: CupertinoDatePicker(
                          mode: CupertinoDatePickerMode.time ,
                          onDateTimeChanged: (DateTime newDate){
                        }, use24hFormat: false, minuteInterval: 1,
                      ),
                    ),

                    const SizedBox(height: 35),

                    Text(
                      "¿En qué dias le gustaría meditar?",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Escoja como minimo 2 días",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 18,
                      ),
                    ),

                    const SizedBox(height: 35),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: dayArr.map<Widget>((dObj) {
                        return CircleButton(
                          title: dObj["name"], 
                          isSelect: dObj["is_select"], 
                          onPressed: () {
                            setState(() {
                              dayArr[dayArr.indexOf(dObj)]["is_select"]=!(dObj["is_select"] as bool? ?? false);
                            });
                          },
                        );
                      }).toList(),
                    ),

                  ],
                ),
              ),
              RoundButton(title: "Guardar", onPressed: (){
                
              }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){

                  }, child: Text(
                      "No, gracias",
                      style: TextStyle(
                        color: TColor.primaryText,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
