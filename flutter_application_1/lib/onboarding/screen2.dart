import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Illustration.png"),
        
            Text("Food Ninja is Where Your\n Comfort Food Lives" , 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22 , fontWeight: FontWeight.w400) ,
            ),
            SizedBox( height: 20,),
             Text("Enjoy a fast and smooth food delivery at\n your doorstep" , 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w400) ,
            ),
            SizedBox(height: 42,),
          ],
        ),
      ),
    );
  }
}