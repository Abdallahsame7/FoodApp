import 'package:flutter/material.dart';

class Customtextfield extends StatefulWidget {
  const Customtextfield({super.key, this.label, this.suffixIcon, this.obscureText = false, this.prefixIcon,
});

  final String? label;
  final IconData? suffixIcon;
  final bool obscureText;
  final IconData? prefixIcon;

  @override
  State<Customtextfield> createState() => _CustomtextfieldState();
}

class _CustomtextfieldState extends State<Customtextfield> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          suffixIcon: widget.suffixIcon != null
              ? GestureDetector(
                  onTap: _toggleObscureText,
                  child: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          labelText: widget.label,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          prefixIcon: widget.prefixIcon != null
              ? Icon(
                  widget.prefixIcon,
                  color: Colors.grey, // You can change the color of the prefix icon if needed
                )
              : null,
        ),
      ),
    );
  }
}
