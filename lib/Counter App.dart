// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppCounter extends StatefulWidget {
  const AppCounter({super.key});

  @override
  State<AppCounter> createState() => _AppCounterState();
}

class _AppCounterState extends State<AppCounter> {
  var Count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.black,
      ),

      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100,),

            Text('$Count',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        
            SizedBox(height: 40,),
        
            ElevatedButton(
              onPressed: (){
                setState(() {
                  Count ++;
                });
              }, 
              child: Text('Click Me')
            ),
          ],
        ),
      ),
    );
  }
}