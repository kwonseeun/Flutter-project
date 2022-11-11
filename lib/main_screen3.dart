import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen3 extends StatefulWidget {
  const MainScreen3({Key? key}) : super(key: key);

  @override
  State<MainScreen3> createState() => _MainScreen3State();
}

class _MainScreen3State extends State<MainScreen3> {

  List week = ['월', '화', '수', '목', '금', '토', '일'];
  List selectList = [];
  bool holidayOrNot = false; // true가 되면 연중무휴,

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
         width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                     ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Column(
                  children: [
                    Flexible(
                      flex: 1,
                        child: Container(
                          color: Colors.orange,
                        ),
                     ),
                    Flexible(
                      flex: 1,
                      child: SizedBox(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),
                             width: MediaQuery.of(context).size.width,
                             height: 50,
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap:(){
                                      if(holidayOrNot) {
                                        setState(() {
                                          holidayOrNot = false;
                                        });
                                      } else {
                                        setState(() {
                                          holidayOrNot = true;
                                        });
                                      }
                                      },
                                    child: SizedBox(
                                      width: MediaQuery.of(context).size.width/3,
                                      height: 30,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: const[
                                          Flexible(
                                            child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Icon(Icons.add, size: 20,)
                                            ),
                                          ),
                                          Flexible(
                                            child: FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text('연중무휴', style: TextStyle(color: Colors.redAccent, fontSize: 90),)),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*0.1),
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width/3,
                                    height: 30,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: const[
                                        Flexible(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                              child: Icon(Icons.adb, size: 30,)),
                                        ),
                                        Flexible(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                              child: Text('GGGGG', style: TextStyle(color: Colors.purple, fontSize: 70),)),
                                        ),
                                      ],
                                    ),

                                  ),
                                ],
                              ),

                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for( int i=0; i < week.length; i++ )
                    GestureDetector(
                      onTap: (){
                        if(selectList.contains(week[i])){
                          setState(() {
                            selectList.remove(week[i]);
                          });
                        }else{
                          setState(() {
                            selectList.add(week[i]);
                          });
                        }
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width/8,
                        height: MediaQuery.of(context).size.width/8,
                        decoration: BoxDecoration(
                            color: selectList.contains(week[i]) ? Colors.redAccent : Colors.white,
                            border: Border.all( color: Colors.redAccent),
                            borderRadius: BorderRadius.circular( MediaQuery.of(context).size.width/16)
                        ),
                        child: Center(
                          child: Text(week[i], style: TextStyle(color: Colors.black, fontSize: 12),),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
