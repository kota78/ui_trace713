import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/rendering.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key key}) : super(key: key);
  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  int i=0;
  var _checkBox1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Positioned.fill(child: Image.asset('assets/angel_luciano.jpg', fit: BoxFit.fill,),),
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(color: Colors.black.withOpacity(0)),
            ),
            //Positioned.fill(child: Container(color: Colors.black.withOpacity(0.2),),),
            Center(
                child: Column(children: [
                  Expanded(child: Container()),
                  Text("Create an Account",
                    style: TextStyle(fontWeight:FontWeight.bold, fontSize: 30.0,color: Colors.white),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Create a GIPHY account so you\ncan favorite,create,upload,&\ncollect all the GIFs!",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight:FontWeight.bold, fontSize: 15.0,color: Colors.grey),
                    ),
                  ),
                  Expanded(child: Container()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children:[
                          (() {
                            if (i == 0){
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(children: [
                                      Expanded(
                                        child: InkWell(
                                            onTap: (){},
                                            child: Container(height: 50,
                                              color: Colors.green[200],
                                              child: Align(alignment: Alignment.center,child: Text("Sign Up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                                            )
                                        ),
                                      ),
                                      Expanded(
                                        child: InkWell(
                                            onTap: (){setState(() {
                                              i=1;
                                            });},
                                            child: Container(height: 50,
                                              color: Colors.grey[800],
                                              child: Align(alignment: Alignment.center,child: Text("Log In",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0))),
                                            )
                                        ),
                                      ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      color: Colors.white,
                                      child: TextField(decoration: const InputDecoration(
                                        labelText: 'Email Address',),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      color: Colors.white,
                                      child: TextField(decoration: const InputDecoration(
                                        labelText: 'Username',),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      color: Colors.white,
                                      child:TextField(decoration: const InputDecoration(
                                        labelText: 'Password',),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Material(
                                      color: Colors.blueAccent,
                                      child: Ink(
                                          decoration:BoxDecoration(
                                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                          ),
                                          child: InkWell(
                                            onTap:() {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => SecondRoute()),
                                              );
                                            },
                                            child: Container(
                                              height: 50,
                                              child: Stack(
                                                children: [
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Center(
                                                          child: Text(
                                                            'Sign Up',
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                                color: Colors.white
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          )
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            } else {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(children: [
                                    Expanded(
                                      child: InkWell(
                                          onTap: (){setState(() {
                                            i=0;
                                          });},
                                          child: Container(height: 50,
                                            color: Colors.grey[800],
                                            child: Align(alignment: Alignment.center,child: Text("Sign Up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                                          )
                                      ),
                                    ),
                                    Expanded(
                                      child: InkWell(
                                          onTap: (){},
                                          child: Container(height: 50,
                                            color: Colors.green[200],
                                            child: Align(alignment: Alignment.center,child: Text("Log In",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 15.0),)),
                                          )
                                      ),
                                    ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    color: Colors.white,
                                    child: TextField(decoration: const InputDecoration(
                                      labelText: 'Email Address/LogIn',),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    color: Colors.white,
                                    child: TextField(decoration: const InputDecoration(
                                      labelText: 'Username/LogIn',),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 50,
                                    color: Colors.white,
                                    child:TextField(decoration: const InputDecoration(
                                        labelText: 'Password/LogIn',),
                                      ),
                                    ),
                                  ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Material(
                                    color: Colors.blueAccent,
                                    child: Ink(
                                        decoration:BoxDecoration(
                                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                                        ),
                                        child: InkWell(
                                          onTap:() {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => SecondRoute()),
                                            );
                                          },
                                          child: Container(
                                            height: 50,
                                            child: Stack(
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Center(
                                                        child: Text(
                                                          'LogIn',
                                                          textAlign: TextAlign.center,
                                                          style: TextStyle(
                                                              color: Colors.white
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }})()
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 4.0),
                    child: Row(
                      children: [
                        Checkbox(
                          value: _checkBox1,
                          onChanged: (bool value){
                            setState((){
                              _checkBox1 = value;
                            });
                          },
                          activeColor: Colors.green,
                          checkColor: Colors.black,
                        ),
                        Text("I have read and agree to the",style: TextStyle(fontSize: 13.0,color:Colors.grey[300]),),
                        GestureDetector(
                            onTap: (){print("a");},
                            child: Text("Terms of Service",style: TextStyle(color: Colors.white,fontSize: 13.0,fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0,horizontal:8),
                    child: Material(
                      color: Colors.black,
                      child: Ink(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          ),
                          child: InkWell(
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondRoute()),
                              );
                            },
                            child: Container(
                              height: 50,
                              child: Stack(
                                children: [
                                  Center(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.flag,size: 15.0,color: Colors.white,),
                                        Text(
                                          'Sign in with Facebook',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:4.0,horizontal:8),
                    child: Material(
                      color: Colors.black,
                      child: Ink(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          ),
                          child: InkWell(
                            onTap:() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SecondRoute()),
                              );
                            },
                            child: Container(
                              height: 50,
                              child: Stack(
                                children: [
                                      Center(
                                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.flag,size: 15.0,color: Colors.white),
                                            Text(
                                                  'Sign in with Apple',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 15,
                                                  ),
                                                ),
                                          ],
                                        ),
                                      ),
                                    ],
                              ),
                            ),
                          )
                      ),
                    ),
                  ),
                  Expanded(child:Container()),
                ],)
            ),]
      ),
    );
  }
}
