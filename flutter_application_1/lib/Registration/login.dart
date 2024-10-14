import 'package:flutter/material.dart';
import 'package:flutter_application_1/Registration/signup.dart';
import 'package:flutter_application_1/custom/bottom.dart';
import 'package:flutter_application_1/custom/customTextField.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
           Stack(
            children: [
              Image.asset('assets/Pattern.png'),
              Positioned(
                  top: 50,
                  right: 93,
                child: Image.asset("assets/Logo.png"))
            ],
          ),
          SizedBox(height: 10,),
           Text("Login To Your Account",
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0) ,fontWeight: FontWeight.bold),
          ),
            SizedBox(height: 40),
        
            Customtextfield(label: "Email",),
            SizedBox(height: 14,),
             Customtextfield(label: "Password",  suffixIcon: Icons.visibility, obscureText: true,),
             SizedBox(height: 14,),
             Text("Or Continue With" , 
             style: TextStyle(fontSize: 12 ,
             fontWeight: FontWeight.bold
             ),
             ),
             SizedBox(height: 20,),

             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 25),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      height: 57,
                      width: 152,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(1, 2),
                            blurRadius: BorderSide.strokeAlignOutside
                          )
                        ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.facebook ,
                            color:Color.fromRGBO(60, 90, 154, 1)
                            ),
                            Text("Facebook",
                            style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                    ),
                  ),
                  SizedBox(width: 21,),
                  Expanded(
                    child: Container(
                      height: 57,
                      width: 152,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            offset: Offset(1, 2),
                            blurRadius: BorderSide.strokeAlignOutside
                          )
                        ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/google-icon 1.png"),
                            Text("Google",
                            style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                    ),
                  )
                ]
               ),
             ),
             SizedBox(height: 16,),

              TextButton(
                onPressed: () {},
                 child: Text("Forgot Your Password?" ,
                 style: TextStyle(color: Colors.green , fontSize: 12 , 
                 fontWeight: FontWeight.bold
                 ) ,
                 )
                 ),
                 SizedBox(height: 30,),

                 InkWell(
                  onTap: () {
                     Navigator.push(context , MaterialPageRoute(builder: (context) => Signup(),));
                  },
                  child: custombottom(name: "Login"))
          ]
        ),
      ),
    );
  }
}