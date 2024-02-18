import 'package:flutter/material.dart';
import 'package:flutter_a/8.1/utils/list.dart';

void main() {
  runApp(const Filter());
}

double pr = 100;

class Filter extends StatefulWidget {
  const Filter({super.key});

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xfffafafa),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Products Filter',
              style:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
          actions: [Icon(Icons.apps, color: Colors.white, size: height * 0.04)],
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Slider(
                min: 0,
                max: 500,
                divisions: 100,
                thumbColor: Colors.blue,
                activeColor: Colors.blue,
                value: pr,
                onChanged: (value) {
                  setState(() {
                    pr = value;
                  });
                },
              ),
              Text("All Products < ${pr.toStringAsFixed(0)}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              Column(
                  children: List.generate(product.length, (index) => (product[index]['price'] <= pr)
                      ? pro(product[index]['id'], product[index]['price'],
                      product[index]['name'], product[index]['qty'], height,
                      width)
                      :Container())
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget pro(int id, int price, String name, String qty, double height,
    double width,) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Container(
      alignment: Alignment.center,
      height: height * 0.08,
      width: width * 0.96,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5,
                spreadRadius: 1,
            )
          ]),
      child: ListTile(
        leading:
        Text('$id', style: TextStyle(fontSize: height * 0.02)),
        trailing: Text('Rs. $price',
            style: TextStyle(fontSize: height * 0.02)),
        title: Text(name,
            style: TextStyle(
                fontSize: height * 0.02,
                fontWeight: FontWeight.bold)),
        subtitle: Text(qty,
        ),
      ),
    ),
  );
}
