import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/Illustartion.png"),
            // IconButton(
            //   onPressed: (){
            //       EasyLocalization.of(context)!.currentLocale == Locale("en") ?
            //       EasyLocalization.of(context)!.setLocale(Locale("ar"))  :
            //       EasyLocalization.of(context)!.setLocale(Locale("en"))  ;


            // }, icon: Icon(Icons.change_circle)
            // ),
            Text("Find your  Comfort Food here"/*.tr()*/ , 
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22 , fontWeight: FontWeight.w400) ,
            ),
            SizedBox( height: 20,),
             Text("Here You Can find a chef or dish for every\n taste and color. Enjoy!" , 
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