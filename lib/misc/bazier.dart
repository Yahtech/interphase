import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // Profile section
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Profile", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                Icon(Icons.more_horiz)
              ],
            ),
          ), 
          SizedBox(height: 20,),
          Stack(
          children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Card(
                elevation: 15,
                child: Positioned(
                  child: Container(
                    padding: const EdgeInsets.only(left: 20),
                    height: 200,
                    width: 400,
                    decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                        ),
                    
                    //Profile screen starts here
                   child: Positioned(
                              child: Column(
                     children: [
                      Row( 
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20, left: 20),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all( color: Colors.pink, style: BorderStyle.solid, width: 0.8),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("img/man.jpg"))
                            ),
                            
                          ),
                           Padding(
                                padding: const EdgeInsets.only(top: 20, left: 20),
                                child: Positioned(
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("@joviedan", style: TextStyle(fontSize: 10),),
                                        SizedBox(height: 5,),
                                        Text("Jovi Daniel", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                                        SizedBox(height: 5,),
                                        Text("UX Designer", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.blue))
                                      
                                      ],
                                    ),
                                ),
                                
                        ),
                        ],
                        ),
                       Positioned(
                         child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text("About Me", style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.bold),),
                                     SizedBox(height: 10,),
                                      Text("Madison Blackstone is director of user experience\ndesign, with experience managing globla teams", style: TextStyle(fontSize: 10, ),)
                                  ],
                                ),
                              ),
                            ],
                          ),
                       ),
                      ],
                      ),
                     ),
                            
                            ),
                            
                ),
            
            ),
              ),
              
          ],
          
        ),
        
        ],
      ),
    );
  }
}