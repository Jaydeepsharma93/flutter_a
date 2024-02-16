import 'package:flutter/material.dart';

void main() {
  runApp(Stack_app());
}

class Stack_app extends StatelessWidget {
  const Stack_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Stack App'),
              centerTitle: true,
            ),
            body: Center(
              child: Stack(
                children: [
                  Positioned(
                    left: 30,
                    top: 50,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.grey,
                          spreadRadius: 1,
                          blurRadius: 10)
                        ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                        child: Text('Purple',style: TextStyle(
                          color: Colors.white,
                          fontSize:20,
                          letterSpacing: 1,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 62,
                    top: 90,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                        child: Text('Indigo',style: TextStyle(
                            color: Colors.white,
                            fontSize:20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 95,
                    top: 130,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                        child: Text('LightBlue',style: TextStyle(
                            color: Colors.white,
                            fontSize:20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 125,
                    top: 170,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                        child: Text('Green',style: TextStyle(
                            color: Colors.white,
                            fontSize:20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 155,
                    top: 210,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                        child: Text('Amber',style: TextStyle(
                            color: Colors.white,
                            fontSize:20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 190 ,
                    top: 250,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                        child: Text('Orange',style: TextStyle(
                            color: Colors.white,
                            fontSize:20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 225,
                    top: 300,
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey,
                                spreadRadius: 1,
                                blurRadius: 10)
                          ]
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal:15,vertical: 5),
                        child: Text('RedAccent',style: TextStyle(
                            color: Colors.white,
                            fontSize:20,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
