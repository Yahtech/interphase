import 'package:flutter/material.dart';
import 'package:interphase/pages/bottomnav/page.dart';
import 'package:interphase/widgets/app_large_text.dart';
import 'package:interphase/widgets/app_text.dart';
import 'package:shimmer/shimmer.dart';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _ChatState();
}

class _ChatState extends State<Home> {
Widget _buildName() {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              child: Shimmer.fromColors(
                baseColor: Colors.white,
                highlightColor: Colors.black.withOpacity(0.5),
                direction: ShimmerDirection.ltr,
                period: Duration(seconds: 5),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage("img/fb.png"), fit: BoxFit.contain),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      )),
                      
                  height: 40,
                  width: 40,
                ),
              ),
            ),
            Positioned(
              top: 20,
              left: 25,
              child: Container(
                height: 10,
                width: 10,
                child: Icon(
                  Icons.heart_broken
                ),
                color: Colors.red,
              ),
              
            ),
           ],
          ),
         SizedBox(height: 10,),
         Text("Emilia")
      ],
    );
     
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi, jonathan!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 71, 43, 121).withOpacity(0.5),
                      fontSize: 13),
                ),
                Icon(Icons.add_alert)
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Explore today's"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildName(),
                _buildName(),
                _buildName(),
                _buildName(),
                _buildName(),
                _buildName(),
                _buildName(),
              ],
            ),
          ),
          Row(
            children: [
              Container(
              margin: const EdgeInsets.only(top: 30, left: 20, right: 10),
               height: 200,
              width: 200,
              child: AppText(text: "Technology", color: Colors.white,),
         decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
              image: AssetImage("img/mountain.jpeg"),
              fit: BoxFit.cover,),
              boxShadow: [
               BoxShadow(
               color: Colors.white.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
      ),],),),
      //Cinema Container
      Container(
              margin: const EdgeInsets.only(top: 15, left: 3, right: 10),
              height: 180,
              width: 190,
              child: AppText(text: "Cinema", color: Colors.white,),
         decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
              image: AssetImage("img/cinema2.jpg"),
              fit: BoxFit.cover,),
              boxShadow: [
               BoxShadow(
               color: Colors.white.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
      ),],),),
            ],
          ),
          // Learn more
         SizedBox(height: 5,),
         Padding(
           padding: const EdgeInsets.all(20.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Latest News", style: TextStyle(color: Colors.black87, fontSize: 15),),
              InkWell(
                onTap: (() {
                }),
                child: Text("More", style: TextStyle(color: Colors.blue),))
            ],
            
           ),
         ),
         SizedBox(height: 5,),
         Row(
           children: [
             Container(
              margin: const EdgeInsets.only(left: 20),
              height: 100,
             width: 100,
             decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("img/media.jpg")),
              borderRadius: BorderRadius.circular(20),
               ),
             ),
              Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text("THE VERGE", style: TextStyle(
                      color: Color.fromARGB(255, 39, 49, 242), fontSize: 10),
                      )
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20, top: 10),
                        child: Text("MacBook Pro with M1 Pro and M1 Max\nreview", style: TextStyle(fontSize: 10),)
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(Icons.thumb_up_alt,),
                            ),
                            SizedBox(height: 5,),
                            Text("3.2k", style: TextStyle(fontSize: 10),),
                            
                            Container(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(Icons.lock_clock,),
                            ),
                            SizedBox(height: 5,),
                            Text("1hr ago", style: TextStyle(fontSize: 10),),
                            Container(
                              padding: const EdgeInsets.only(left: 30),
                              child: Icon(Icons.table_bar),
                            )
                          ],
                        ),
                        ],
                       ),
                      ),
                      
                     ],
         )
        
      ],
      ),
    );
  }
}
