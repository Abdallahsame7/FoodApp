import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/bottom.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/Pattern.png",
            ),
          Image.asset("assets/congrats.png",
          width: 180,
          height: 180,
          ),

          Text("Congrats!" , 
          style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold , color: Colors.green ),
          ),
         SizedBox(height: 12,),

           Text("Your Profile Is Ready To Use!" , 
          style: TextStyle(fontSize: 23 , fontWeight: FontWeight.bold ),
          ),
          SizedBox(height: 140,),
          InkWell(
            onTap: () {
              
            },
            child: custombottom(name: "Try Order",))
        ],
      ),
    );
  }
}
