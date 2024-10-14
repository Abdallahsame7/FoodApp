import 'package:flutter/material.dart';

class customContainer extends StatefulWidget {
  const customContainer({super.key, required this.image,  this.height, this.name, });

  final Image image;
  final double? height;
  final String? name;
  @override
  State<customContainer> createState() => _customContainerState();
}

class _customContainerState extends State<customContainer> {
    Color containerColor = Colors.white; 

void changeColor() {
    setState(() {
      containerColor = containerColor == Colors.white ? Colors.green : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        changeColor();
      },
      child: Container(
            width: 335,
              height: widget.height ?? 73 ,
            decoration: BoxDecoration(
              color: containerColor,
              borderRadius: BorderRadius.circular(22),
                boxShadow: [
             BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),    
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.image,
              if (widget.name != null)
              Text(
                widget.name!,         
              )
        ],
        ),
          ),
    );
        
  }
}