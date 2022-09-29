import 'package:flutter/material.dart';

class Page extends StatefulWidget {
  const Page({super.key});

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("img/media.jpg")),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Container(
          height: 100,
          width: 350,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "THE VERGE",
                    style: TextStyle(
                        color: Color.fromARGB(255, 39, 49, 242), fontSize: 10),
                  )),
              Container(
                  padding: const EdgeInsets.only(left: 20, top: 10),
                  child: Text(
                    "MacBook Pro with M1 Pro and M1 Max\nreview",
                    style: TextStyle(fontSize: 10),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.thumb_up_alt,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "3.2k",
                    style: TextStyle(fontSize: 10),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    child: Icon(
                      Icons.lock_clock,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1hr ago",
                    style: TextStyle(fontSize: 10),
                  ),
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
    );
  }
}
