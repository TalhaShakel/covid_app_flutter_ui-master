// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_13/main.dart';

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color,
        leading:
            IconButton(onPressed: () {}, icon: Image.asset("assets/menu.png")),
        actions: [Image.asset("assets/bell.png")],
        title: Row(
          children: [
            Center(child: Text("BEAWARE TO COVID")),
            Icon(Icons.arrow_drop_down_outlined),
          ],
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/covid-bg.png",
              ),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            )),
            child: Column(
              children: [
                Container(
                  height: 200,
                ),
                Container(
                  // alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child:  ListView(
                    children: [
                      Container(
                          color: color,
                          height: 200,
                          width: 200,
                        ),
                    ],
                  ),
                  ),
                  // child:Card() ,
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
