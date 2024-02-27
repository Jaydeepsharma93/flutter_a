import 'package:flutter/material.dart';
import 'package:flutter_a/Drawer%20&%20Buttons/utils/listdrawer.dart';

void main() {
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
              title: Text(
                'Gmail',
                style: TextStyle(color: Colors.white),
              ),
            ),
            drawer: Container(
              height: double.infinity,
              width: 280,
              decoration: BoxDecoration(
                color: Color(0xff2e2f33),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35, left: 20, bottom: 10),
                    child: Text(
                      'Gmail',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.all_inbox, color: Colors.white),
                    title: Text("All Inboxes",
                        style: TextStyle(color: Colors.white)),
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.inbox, color: Colors.white),
                    title: Text("Inbox", style: TextStyle(color: Colors.white)),
                  ),
                  Divider(),
                  Column(
                    children:List.generate(drawer_list.length, (index) => dra_wer(drawer_list[index]['icon'], drawer_list[index]['name']),),
                  )
                ],
              ),
            )),
      ),
    );
  }
}

Widget dra_wer(IconData icon,String name) {
  return ListTile(
    leading: Icon(icon,color: Colors.white,),
    title: Text(name, style: TextStyle(color: Colors.white)),
  );
}
