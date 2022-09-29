import 'package:flutter/material.dart';
import 'package:interphase/widgets/app_text.dart';
import 'package:interphase/widgets/note_text.dart';
import 'package:like_button/like_button.dart';

class Article extends StatefulWidget {
  const Article({super.key});

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton.extended(
        elevation: 10,
        backgroundColor: Colors.blue.shade700,
        onPressed: (){},
      label: Text("2.1k"),
        icon: Icon(Icons.thumb_up),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10) ),
        ) ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Icon(Icons.arrow_back_ios_new),
              Icon(Icons.more_horiz)],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppText(text: "Four Things Every Woman Needs To\nKnow", color: Colors.black,),
              ],
            ), 
      
            // Lady picture with text start here
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 20, top: 20, right: 10),
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                      image: AssetImage("img/hijab.jpg") ),
                        borderRadius: BorderRadius.circular(15) ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      padding: const EdgeInsets.only(top: 15, ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Richard Gervain", style: TextStyle(fontSize: 10, color: Colors.black),),
                          SizedBox(height: 5 ,),
                          Text("2m ago", style: TextStyle(fontSize: 10, color: Colors.black),)
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.upload_file),
                ),
                
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Icon(Icons.view_headline),
                )
                  ],
                )
                ],
            ),
            SizedBox(height: 30,),
      
            //article image with text start here
            Container(
              height: 200,
              width: double.maxFinite,
              decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
              image: AssetImage("img/article2.jpg")),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
              ),
            ),
           Row(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Text("A man's sexual is never your mind\nresponsibility", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
                   ],
              )
            ],
           ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("A descriptive cross-sectional design was employed to assess the knowledge attitude towards immunization among mothers’ in Nsukka East, LGA, Enugu State.The study used a descriptive survey design which \ninvolved describing, recording, analyzing and interpreting conditions that exist. In line with this Adeloye, Ige and Aderemi  (2017) stated descriptive cross-sectional design is an effective way of gathering data from\n different sources within a short time at a relatively cheaper cost. The design allowed use of questionnaire method of data collection\n, It also makes use of standardized questions where reliability of the items is determined (Agaba, Akanbi and Agaba, 2017\nNsukka The study area is located between latitudes 040 531 and 040 541 N, and longitudes 0060 531 and 0060 561 E which host communities of Nkpunanor, Ihen’owerre, Nru Nsukka, Nguru, Lejja, Opi, Orba,and Eha –Alumona.. The study area lies within the Tropical rainforest or Equatorial monsoon climate region described in the Köppen climate classification system as characterized by very high rainfall, temperature and relative humidity. The temperature ranges are almost constant throughout the year)",
            style: TextStyle(fontSize: 10),),
          ),
          ],
        ),
      ),
    );
  }
}