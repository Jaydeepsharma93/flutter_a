import 'package:flutter/material.dart';

void main(){
  runApp(const D_rawer());
}
class D_rawer extends StatefulWidget {
  const D_rawer({super.key});

  @override
  State<D_rawer> createState() => _D_rawerState();
}

class _D_rawerState extends State<D_rawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xff2e2f33),
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.black,
            title: Text('Gmail',style: TextStyle(color: Colors.white),),
          ),
          drawer: Container(
            height:double.infinity,
            width: 300,
            color: Color(0xff2e2f33)
          )
        ),
      ),
    );
  }
}
