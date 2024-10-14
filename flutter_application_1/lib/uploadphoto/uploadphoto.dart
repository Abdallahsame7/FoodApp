import 'package:flutter/material.dart';
import 'package:flutter_application_1/custom/bottom.dart';
import 'package:flutter_application_1/custom/container.dart';
import 'package:flutter_application_1/uploadphoto/uploadPreview.dart';

class Uploadphoto extends StatefulWidget {
  const Uploadphoto({super.key});

  @override
  State<Uploadphoto> createState() => _UploadphotoState();
}

class _UploadphotoState extends State<Uploadphoto> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25), 
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 38),
            InkWell(
              onTap: () {
               Navigator.pop(context);
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 168, 77, 1).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Icon(Icons.arrow_back_ios ,  color: Color.fromRGBO(218, 99, 23, 1),),),
              ),
            ),
            SizedBox(height: 20,),
            const Text(
              "Upload Your Photo Profile",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            const Text(
              "This data will be displayed in your account\n profile for security",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 20),

            Column(
              children: [
                customContainer(image: Image.asset("assets/Gallery.png"), height: 129 , name: "From Gallery" , ),
                const SizedBox(height: 20),
                customContainer(image: Image.asset("assets/camera.png") , height: 129, name:  "Take Photo",),
               
              ],
            ),
            SizedBox(height: 219,),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Uploadpreview()),
                );
              },
              child: Center(child: custombottom(name: "Next")),
            ),
          ],
        ),
      ),
    );
  }
}
