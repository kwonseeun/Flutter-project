import 'package:flutter/material.dart';

class MainScreen2 extends StatefulWidget {
  const MainScreen2({Key? key}) : super(key: key);

  @override
  State<MainScreen2> createState() => _MainScreen2State();
}

class _MainScreen2State extends State<MainScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
      Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width*1.0,
              height: MediaQuery.of(context).size.width*0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.black,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.red,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.green,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.orange,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.pink,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width*0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.blue,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.blue,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.blue,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.width*0.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.green,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.red,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.green,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width*0.5,
              height: MediaQuery.of(context).size.width*0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.2,
                    color: Colors.pink,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.2,
                    height: MediaQuery.of(context).size.width*0.4,
                    color: Colors.blueGrey,
                  ),
                ],
              ),
            ),
          SizedBox(
            width: MediaQuery.of(context).size.width*0.2,
            height: MediaQuery.of(context).size.width*0.2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  height: MediaQuery.of(context).size.width*0.2,
                  color: Colors.yellowAccent,
                ),
              ],
            ),
           ),
          ],
        ),
      ),
    );
  }
}
