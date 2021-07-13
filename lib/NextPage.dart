import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Positioned.fill(child: Container(color: Colors.black,),),
          //Positioned.fill(child: Image.asset('assets/a.jpg', fit: BoxFit.fill,),),
          Center(
          child: Column(children: [
            Expanded(child: Container()),
            Text("Create an Account",
              style: TextStyle(fontWeight:FontWeight.bold, fontSize: 30.0 ),),

            Expanded(child: Container()),
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
                            Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Sign in with Facebook',
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
                            Row(
                              children: [
                                Expanded(
                                  child: Center(
                                    child: Text(
                                      'Sign in with Apple',
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
            Expanded(child:Container()),
          ],)
        ),]
      ),
    );
  }
}