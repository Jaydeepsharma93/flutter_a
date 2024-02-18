import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Emi_calc());
}

double x = 20000;
double rate = 1;
double tenure = 3;
double Emi = 0;

class Emi_calc extends StatefulWidget {
  const Emi_calc({super.key});

  @override
  State<Emi_calc> createState() => _Emi_calcState();
}

class _Emi_calcState extends State<Emi_calc> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff122048),
        body: Column(
          children: [
            Container(
              height: height * 0.25,
              width: width,
              decoration: BoxDecoration(
                  color: Color(0xff1A235C),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xff1A235C),
                        Color(0xff1A235C),
                        Color(0xff122048)
                      ])),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: AppBar(
                      backgroundColor: Colors.transparent,
                      leading: Icon(
                        Icons.widgets_outlined,
                        color: Colors.white,
                      ),
                      title: Text("EMI Calculator",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      centerTitle: true,
                    ),
                  ),
                  Text(
                    'Your Lone EMI is',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: height * 0.015),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "\u20B9 ${Emi.toStringAsFixed(2)}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: height * 0.04,
                          fontWeight: FontWeight.w500,
                        )),
                    TextSpan(
                      text: "/Month",
                      style: TextStyle(
                          color: Colors.white70, fontSize: height * 0.015),
                    )
                  ]))
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.75,
                      height: height * 0.14,
                      child: Column(
                        children: [
                          Text(
                            'Loan Amount',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: height * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                'Loan Amount',
                                style: TextStyle(
                                    color: Color(0xffE6E7E9),
                                    fontSize: height * 0.05,
                                    height: 0.001,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('${x.toStringAsFixed(0)}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.025,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 2,
                              trackShape: RectangularSliderTrackShape(),
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 7),
                            ),
                            child: Slider(
                                min: 20000,
                                max: 100000,
                                thumbColor: Color(0xff122048),
                                divisions: 200,
                                value: x,
                                onChanged: (value) {
                                  setState(() {
                                    x = value;
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.75,
                      height: height * 0.14,
                      child: Column(
                        children: [
                          Text(
                            'Interest Rate',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: height * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                'Interest Rate',
                                style: TextStyle(
                                    color: Color(0xffE6E7E9),
                                    fontSize: height * 0.05,
                                    height: 0.001,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('${rate.toStringAsFixed(0) + '%'}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.025,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 2,
                              trackShape: RectangularSliderTrackShape(),
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 7),
                            ),
                            child: Slider(
                              min: 1,
                              max: 100,
                              thumbColor: Color(0xff122048),
                              divisions: 100,
                              value: rate,
                              onChanged: (value) {
                                setState(() {
                                  rate = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: width * 0.75,
                      height: height * 0.14,
                      child: Column(
                        children: [
                          Text(
                            'Loan Tenure',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: height * 0.03,
                                fontWeight: FontWeight.bold),
                          ),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Text(
                                'Loan Tenure',
                                style: TextStyle(
                                    color: Color(0xffE6E7E9),
                                    fontSize: height * 0.05,
                                    height: 0.001,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text('${tenure.toStringAsFixed(0)}',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: height * 0.025,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              trackHeight: 2,
                              trackShape: RectangularSliderTrackShape(),
                              thumbShape:
                                  RoundSliderThumbShape(enabledThumbRadius: 7),
                            ),
                            child: Slider(
                              min: 3,
                              max: 60,
                              thumbColor: Color(0xff122048),
                              divisions: 20,
                              value: tenure,
                              onChanged: (value) {
                                setState(() {
                                  tenure = value;
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          Emi = calculate(x, rate, tenure);
                        });
                      },
                      child: Container(
                        height: 70,
                        width: 250,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Color(0xffE8EBFF)),
                        child: Text(
                          "Calculate",
                          style: TextStyle(
                              color: Color(0xff283268),
                              fontWeight: FontWeight.w600,
                              fontSize: 25),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

double calculate(double price, double rate, double tenure) {
  rate = rate / 12 / 100;
  var temppow = pow((1 + rate), tenure);
  var temppow2 = pow((1 + rate), tenure);
  double emi = price * rate * temppow / (temppow2 - 1);

  return emi;
}
