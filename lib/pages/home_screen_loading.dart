import 'package:flutter/material.dart';
import 'bottomnav/article.dart';
import 'bottomnav/home.dart';
import 'bottomnav/profile.dart';
import 'bottomnav/search.dart';

class HomeScreenLogin extends StatefulWidget {
  const HomeScreenLogin({super.key});

  @override
  State<HomeScreenLogin> createState() => _HomeScreenLoginState();
}

class _HomeScreenLoginState extends State<HomeScreenLogin> {
  int currentTab = 0;
  final List<Widget> screens = [
    
    Home(),
    Search(),
    Article(),
    ProfileScreen()
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        width: 40,
        child: FloatingActionButton(
          backgroundColor: Color.fromARGB(255, 39, 83, 214),
          splashColor: Colors.black,
          child: Icon(Icons.add,),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        // notchMargin: 1,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 20,
              blurRadius: 7,
              offset: Offset(3, 5),
            ),
          ],
          ),
          // color: Colors.white,
          padding: const EdgeInsets.only(left: 10, right: 10),
          height: 40,
          margin: const EdgeInsets.only(bottom: 5, top: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              //Left Tabbar
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                    setState(() {
                      currentScreen = Home();
                      currentTab = 0;

                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home_filled,
                        color: currentTab == 0 ? Colors.blue: Colors.grey ,
                      ),
                      Text("Home", style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.grey, fontSize: 10),)
                    ],
                  ),
                  ),
                  MaterialButton(onPressed: () {
                    setState(() {
                      currentScreen = Article();
                      currentTab = 1;

                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.auto_stories,
                        color: currentTab == 1 ? Colors.blue: Colors.grey ,
                      ),
                      Text("Article", style: TextStyle(color: currentTab == 1 ? Colors.blue : Colors.grey, fontSize: 10),)
                    ],
                  ),
                  ),
                  
                ],
       ),
       // Right Tabbar
                   Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(onPressed: () {
                    setState(() {
                      currentScreen = Search();
                      currentTab = 2;

                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: currentTab == 2 ? Colors.blue: Colors.grey ,
                      ),
                      Text("Search", style: TextStyle(color: currentTab == 2 ? Colors.blue : Colors.grey, fontSize: 10),)
                    ],
                  ),
                  ),
                  MaterialButton(onPressed: () {
                    setState(() {
                      currentScreen = ProfileScreen();
                      currentTab =3;

                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.menu,
                        color: currentTab == 3 ? Colors.blue: Colors.grey ,
                      ),
                      Text("Menu", style: TextStyle(color: currentTab == 3 ? Colors.blue : Colors.grey, fontSize: 10),)
                    ],
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
