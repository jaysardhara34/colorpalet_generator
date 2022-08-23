import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Colorpalet(),
    ),
  );
}

class Colorpalet extends StatefulWidget {
  const Colorpalet({Key? key}) : super(key: key);

  @override
  State<Colorpalet> createState() => _ColorpaletState();
}

class _ColorpaletState extends State<Colorpalet> {
  List c = [
    Colors.white70,
    Colors.blue,
    Colors.black,
    Colors.blueGrey,
    Colors.deepOrange,
    Colors.lightBlue,
    Colors.pink,
    Colors.lightGreen,
    Colors.deepPurple,
    Colors.red,
    Colors.brown,
    Colors.tealAccent,
    Colors.teal,
    Colors.brown,
    Colors.lightGreen.shade900,
    Colors.pink,
    Colors.teal,
    Colors.black87,
    Colors.purpleAccent,
    Colors.yellowAccent,
    Colors.indigo,
    Colors.orangeAccent,
  ];
  int i = 0;
  int j = 0;
  int k = 0;
  int l = 0;
  int y = 0;
  int u = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff01d7bd),
          Color(0xffa4f5ea),
          Color(0xffbdf6c5),
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Color Pallete \n   Generator",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  color: c[y],
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
              ),
              Container(
                height: 70,
                width: 100,
                color: c[i],
              ),
              Container(
                height: 70,
                width: 100,
                color: c[j],
              ),
              Container(
                height: 70,
                width: 100,
                color: c[k],
              ),
              Container(
                height: 70,
                width: 100,
                color: c[l],
              ),
              Container(
                height: 70,
                width: 100,
                decoration: BoxDecoration(
                  color: c[u],
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: InkWell(
                  onTap: () {
                    Random color = Random();
                    Random color1 = Random();
                    Random color2 = Random();
                    Random color3 = Random();
                    Random color4 = Random();
                    Random color5 = Random();
                    setState(() {
                      i = color.nextInt(c.length);
                      j = color1.nextInt(c.length);
                      k = color2.nextInt(c.length);
                      l = color3.nextInt(c.length);
                      y = color4.nextInt(c.length);
                      u = color5.nextInt(c.length);
                    });
                  },
                  child: Card(
                    elevation: 10,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: 50,
                      width: 120,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Color(0xffffc400),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text("Generate"),
                    ),
                  ),
                ),
              ),
              Align(alignment: Alignment.centerRight,child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Text("By: Jay_7429",style: TextStyle(fontSize: 19),),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
