import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}
class _ProfileScreenState extends State<ProfileScreen> {
  @override
    Widget build(BuildContext context) {
      // double width = MediaQuery.of(context).size.width;
      return Scaffold(
        body: Column(
          children: [
            Container(
          ),
            Container(
         color: Colors.white,
        child: Column(
         children: <Widget>[
        Stack(
          children: <Widget>[
            Container (
              margin: const EdgeInsets.only(bottom: 20.0),
              alignment: Alignment.topCenter,
              height:250.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(30,8),
                  bottomRight: Radius.elliptical(30,8),
                ),
                color:Colors.blueAccent,
              ),
            ),
          ],
        ),
      ],
    ),
        ),
        SizedBox(
          height: 20,
        ),
        
        
          ],
        
        ),
        
);
              
}
} 