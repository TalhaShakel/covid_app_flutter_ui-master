// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_13/main.dart';
import 'package:sizer/sizer.dart';
import 'package:responsive_flutter/responsive_flutter.dart';

class HOMEPAGE extends StatelessWidget {
  const HOMEPAGE({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color,
        leading:
            IconButton(onPressed: () {}, icon: Image.asset("assets/menu.png")),
        actions: [Image.asset("assets/bell.png")],
        title: Row(
          children: [
            Center(child: Text("BEAWARE TO COVID",style: TextStyle(
              fontSize: width*0.05
            ),)),
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
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                  // alignment: Alignment.bottomCenter,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 200,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: maincards(context),
                ),
                // child:Card() ,
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListView maincards(context) {
    return ListView(
                  children: [
                    card1(),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        featurecard(context,"assets/map.svg", "MAP"),
                        featurecard(context,"assets/phone.svg", "PHONE"),
                        featurecard(context,"assets/trend.svg", "TREND")
                        
                        ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        featurecard(context,"assets/upload.svg", "UPLOAD\nDATE"),
                        featurecard(context,"assets/virus.svg", "VIRUS 19"),
                        featurecard(context,"assets/trend.svg", "TREND")
                        
                        ],
                    )
                  ],
                );
  }

  Column featurecard(context,String picname, name) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 6),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[200]),
            child: SvgPicture.asset(
              picname,
              width: 40,
            ),
          ),
        ),
        Text(
          name,
          style: TextStyle(
            fontSize: ResponsiveFlutter.of(context).fontSize(3),
            fontWeight: FontWeight.bold,color: Colors.black
          ),
        )
      ],
    );
  }
}

class card1 extends StatelessWidget {
  const card1({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:20),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
            // boxShadow: BoxShadow(
            // offset:
            // ),
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.36,
              height: 110,
              child: Image.asset("assets/doctor.png"),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "SYMPTOM \nCHECKER",
                  style: TextStyle(fontSize: 1.sp,)
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Based an \ncommon symptoms",
                  style: TextStyle(
                    fontSize: ResponsiveFlutter.of(context).fontSize(1.9),
                    // fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
