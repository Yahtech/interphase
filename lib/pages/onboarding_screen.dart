import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:interphase/widgets/app_text.dart';
import 'package:interphase/widgets/note_text.dart';
import 'package:interphase/widgets/resppnsive_button.dart';



class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
          margin: const EdgeInsets.only(top: 20, left: 3, right: 20),
           height: 120,
          width: 80,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
          image: AssetImage("img/mountain.jpeg"),
          fit: BoxFit.cover,),
          boxShadow: [
          BoxShadow(
          color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
      ),],),),
       Container(
          margin: const EdgeInsets.only(top: 10, left: 3, right: 20),
           height: 120,
          width: 170,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
          image: AssetImage("img/mountain.jpeg"),
          fit: BoxFit.cover,),
          boxShadow: [
          BoxShadow(
          color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
      ),],),),
      ],
        ),
        const SizedBox(height: 2,),
        Row(
       mainAxisSize: MainAxisSize.min,
          children: [
            Container(
          margin: const EdgeInsets.only(top: 10, left: 3, right: 10),
           height: 120,
          width: 170,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
          image: AssetImage("img/mountain.jpeg"),
          fit: BoxFit.cover,),
          boxShadow: [
          BoxShadow(
          color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
      ),],),),
       Container(
          margin: const EdgeInsets.only(top: 10, left: 3, right: 10),
           height: 120,
          width: 80,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
          image: AssetImage("img/mountain.jpeg"),
          fit: BoxFit.cover,),
          boxShadow: [
          BoxShadow(
          color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
      ),],),),
          ],
        ),
        SizedBox(height: 20,),
        Expanded(
          child: Column(
            children: [
              Card(
                elevation: 20,
                child: Container(
                  height: 333,
                  width: double.infinity,
                decoration: const BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10.0)),
              ),
                child: Row(
                children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5,),
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(text: "Read the article you want instantly",),
                          SizedBox(height: 10,),
                         Container(
                          padding: const EdgeInsets.only(left: 5),
                           child: const Text("You can read thousands of article on Blog Club, save them in the\n application and there them with your loved ones", 
                           style: TextStyle(fontSize: 10, color: Colors.black45),),
                         ),
                        const SizedBox(height: 200,),
                        ResponsiveButton(width: 50,)
                          ],
                           
                         ),
                         
                      ),
                ]
                ),
                ),
                ),


            ],
          ),
        ),
       ],
     );
 }
}

// height: 250,
//                 width: 150,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                   color: Colors.white,
//                   image: const DecorationImage(
//                   image: AssetImage("img/mountain.jpeg"),
//                   fit: BoxFit.cover,