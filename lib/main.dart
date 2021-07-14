import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_trace713/NextPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children:[
              Positioned.fill(child: Container(color: Colors.black,),),
              Center(child: Image.asset("assets/night_moon.gif")),
              Column(
                children: [
                  Expanded(child: (Container())),
                  Row(mainAxisAlignment:MainAxisAlignment.center,children:<Widget>[
                    Icon(Icons.camera, color: Colors.white,size: 40,),
                    Text("GIPHY",style: TextStyle(color: Colors.white, fontSize: 40,fontWeight:FontWeight.bold),)]),
                  Text("Your destination for bite-sized, sharable\nentertainment",
                    textAlign:TextAlign.center,
                    style: TextStyle(color: Colors.white),),
                  Expanded(child: (Container())),
                  //Image.asset("assets/350x350.jpg"),
                  Text("Sign up to spend more time with your\nfriends "),
                  Expanded(flex:10,child:Container()),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:30.0,horizontal:8),
                    child: Material(
                      color: Colors.blue,
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
                                            'Get Started!',
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
              ),
            ])
    );
  }
}
