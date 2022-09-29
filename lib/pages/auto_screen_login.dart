import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:interphase/pages/home_screen_loading.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String name;
  late String password;
  late String fullname;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Username"),
      style: TextStyle(fontSize: 12),
    );
  }

  Widget _buildPassword() {
  return TextFormField(
   obscureText: true,
      decoration: InputDecoration(labelText: "Password"),
      style: TextStyle(fontSize: 12),
    );
  }

  Widget _buildFullName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Fullname"),
      style: TextStyle(fontSize: 12),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 4),
                    height: 25,
                    width: 95,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 39, 83, 214),
                      borderRadius: BorderRadius.circular(5)),
                    child: Text("BLOG", style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20, 
                      letterSpacing: 10, fontWeight: FontWeight.bold,),),
                  ),
                  SizedBox(height: 3,),
                  Container(
                    padding: const EdgeInsets.only(left: 40),
                    height: 20,
                    width: 130,
                    child: Text("CLUB", style: TextStyle(letterSpacing: 10, color: Color.fromARGB(255, 39, 83, 214), fontSize: 20),),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  //tab bar
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 39, 83, 214),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: TabBar(indicatorColor: Colors.transparent, tabs: [
                        Tab(text: "LOG IN"),
                        Tab(
                          text: "SIGN UP",
                        )
                      ]),
                    ),
                  ),

                  // Tabbar ends here
                  // Tabview start here
                 SizedBox(
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(children: [
                      Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                            margin: const EdgeInsets.only(top: 10, left: 15),
                            child: Text("Welcome back", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                                ),
                                 SizedBox(height: 10,),
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 15),
                            child: Text("Sign in with your account",style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 10)),
                          ),
                         ],
                       ),
                       SizedBox(height: 10,),
                          Container(
                            padding: const EdgeInsets.only(left: 15),
                            width: MediaQuery.of(context).size.width,
                            child: Form(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                _buildName(),
                                _buildPassword(),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  padding:const EdgeInsets.only(left: 10, right: 10),
                                  width: double.maxFinite,
                                  child: ElevatedButton(
                                    onPressed: () => {
                                      Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) => HomeScreenLogin())),
                                    },
                                    style: ButtonStyle(
                                   shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),),
                                                    ),
                                                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 39, 83, 214),),
                                                    ),
                                    child: Text(
                                      "LOG IN",
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      child: Text("Forgot Password?", style: TextStyle(color: Colors.black, fontSize: 10),),
                                    ),
                                    InkWell(
                                      onTap: () => {
                                      
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.only(left: 5,),
                                        child: Text("Reset here", style: TextStyle(color: Colors.blue, fontSize: 10), ),
                                        
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                  Container(
                                  padding: const EdgeInsets.only(top: 2, bottom: 5),
                                  child: Text("OR SIGN IN WITH", style: TextStyle(
                                    fontSize: 10, color: Colors.black, wordSpacing: 2,
                                  ),),
                                ),
                                SizedBox(height: 30,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                   // Google Image
                                  Container(
                                    height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image:  AssetImage("img/fb.png"),
                                      fit: BoxFit.cover),
                                    borderRadius:BorderRadius.circular(20) ),
                                    ),
                             // Facebook Image
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("img/google.jpeg")),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                // Twitter Image   
                                Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("img/twitter.jpeg") ),
                                      borderRadius: BorderRadius.circular(20)),
                                  ),

                                ],
                              )
                              ],
                            )),
                          ),
                        ],
                      ),

                      // Sign up part
                         Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(top: 10, left: 15),
                                child: Text("Welcome to Blog Club", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),),
                                ),
                         SizedBox(height: 10,),
                          Container(
                            margin: const EdgeInsets.only(top: 10, left: 15),
                            child: Text("Enter your Information",style: TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 10)),
                          ),
                          ],
                        ),
                       Container(
                            padding: const EdgeInsets.only(left: 15),
                            child: Form(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                _buildFullName(),
                                _buildName(),
                                _buildPassword(),
                                SizedBox(
                                  height: 10,
                                ),

                              Container(
                                  height: 40,
                                  padding:
                                      const EdgeInsets.only(left: 10, right: 10),
                                  width: double.maxFinite,
                                  child: ElevatedButton(
                                    onPressed: () => {
                                      
                                    },
                                    style: ButtonStyle(
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                                    backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 39, 83, 214).withOpacity(1),),),
                                    child: Text(
                                      "SIGN UP",
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10,) ,
                                Container(
                                  padding: const EdgeInsets.only(top: 2, bottom: 5),
                                  child: Text("OR SIGN UP WITH", style: TextStyle(
                                    fontSize: 10, color: Colors.black, wordSpacing: 2,
                                  ),),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                
                                  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                
                                children: [
                                   // Google Image
                                  Container(
                                    
                                    height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image:  AssetImage("img/fb.png"),
                                      fit: BoxFit.cover),
                                    
                                    borderRadius:BorderRadius.circular(20) ),
                                    ),

                                  // Facebook Image
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("img/google.jpeg")),
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                

                                 // Twitter Image   
                                Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("img/twitter.jpeg") ),
                                     borderRadius: BorderRadius.circular(20)),
                                  )
                                ],
                              )
                              ],
                            )),
                          ),
                        ],
                      )
                    ]),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


