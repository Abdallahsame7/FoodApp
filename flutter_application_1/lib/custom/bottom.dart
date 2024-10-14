import 'package:flutter/material.dart';

class custombottom extends StatelessWidget {
  const custombottom({super.key, this.name});
 final String? name;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 57,
        width: 157,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(191, 26, 172, 0),
              Color.fromARGB(214, 0, 142, 9),
            ],
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            name.toString(),
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ),
      );
  }
}