// ignore_for_file: avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.purple600,
        appBar: AppBar(
          elevation: 30.0,
          shadowColor: Vx.purple600,
          backgroundColor: Vx.purple600,
          //leading: const Icon(Icons.ac_unit_rounded),
          title: "SetState Management".richText.white.make(),
        ),
        drawer: Drawer(),
        body: VStack([
          Container(
            height: 100,
            width: 300,
            color: Vx.randomColor,
          ).centered().p64().pLTRB(0, 64, 0, 0),
          Container(
            child: Center(
              child: FloatingActionButton(
                  child: Text(
                    "$count",
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  elevation: 30.0,
                  splashColor: Vx.randomColor,
                  hoverColor: Vx.randomColor,
                  hoverElevation: 30.0,
                  highlightElevation: 30.0,
                  onPressed: () {
                    setState(() {
                      count++;
                      Vx.randomColor;
                    });
                  }),
            ),
          ).centered(),
        ]),
      ),
    );
  }
}
