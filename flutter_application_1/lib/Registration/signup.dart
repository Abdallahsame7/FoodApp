import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/bottom.dart';
import 'package:flutter_application_1/custom/customTextField.dart';
import 'package:flutter_application_1/payment/payment.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
    bool keepMeSignedIn = false;
    bool enailhim = false;

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
           Text("Sign Up For Free ",
            style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 0, 0, 0) ,fontWeight: FontWeight.bold),
          ),
            SizedBox(height: 40),
        
            Customtextfield(label: "Anamwp . . |", prefixIcon: Icons.person),
            SizedBox(height: 14,),
             Customtextfield(label: "Email" , prefixIcon: Icons.email ,),
              SizedBox(height: 14,),
             Customtextfield(label: "Password",  suffixIcon: Icons.visibility, obscureText: true, prefixIcon: Icons.lock,),
             SizedBox(height: 16,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Transform.scale(
                           scale: 1.2,                       
                          child: Checkbox(
                            side: BorderSide(
                              width: 2,
                              color: Colors.grey
                            ),
                            shape: CircleBorder(),
                            activeColor: Colors.green,
                            value:  keepMeSignedIn,
                             onChanged: (value) {
                               setState(() {
                                keepMeSignedIn = value ?? false;
                                });
                             },
                             ),
                        ),
                            Text("Keep Me Signed In")
                      ]
                    ),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.2,
                          child: Checkbox(
                              
                            side: BorderSide(
                              width: 2,
                              color: Colors.grey
                            ),
                            shape: CircleBorder(),
                            activeColor: Colors.green,
                            value:  enailhim,
                             onChanged: (value) {
                               setState(() {
                                enailhim = value ?? false;
                                });
                             },
                             ),
                        ),
                            Text("Email Me About Special Pricing")
                      ]
                    ),
                    SizedBox(height: 20,),
                
                    InkWell(
                      onTap: () {
                    Navigator.push(context , MaterialPageRoute(builder: (context) => PaymentMethod(),));

                      },
                      child: custombottom(name: "Create Account",)),

                    TextButton(
                      onPressed: () {},
                      child: Text("already have an account?",
                     style: TextStyle(color: Colors.green , fontSize: 12 , 
                   fontWeight: FontWeight.bold
                      )
                      )
                    )
                  ],
                ),
              )
          ]
        ),
      ),
    );
  }
}