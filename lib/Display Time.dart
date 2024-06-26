// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DisplayTime extends StatefulWidget {
  const DisplayTime({super.key});

  @override
  State<DisplayTime> createState() => _DisplayTimeState();
}

class _DisplayTimeState extends State<DisplayTime> {
  var b;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Display Time',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),)),
        backgroundColor: Colors.black,
      ),

      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          children: [
            // SizedBox(height: 200,),

            // Text('12:38 Tue',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w800),),

            // SizedBox(height: 80,),

            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.blueAccent
            //   ),
            //   onPressed: () {}, 
            //   child: Text('Timer',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            // )

            SizedBox(height: 150,),

            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(20)
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text('$b'),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: IconButton(
                      onPressed: (){
                        setState(() {
                         b=TimeOfDay.now();
                        });
                      }, 
                      icon: Icon(Icons.watch)
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}