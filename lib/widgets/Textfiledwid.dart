import 'package:flutter/material.dart';

class Textfiledwid extends StatelessWidget {
  final String text;
  final bool hidden;
  final TextEditingController controller;
  const Textfiledwid({
    super.key, required this.text,this.hidden = false, required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: hidden,
      style: TextStyle(color: Colors.white),
     keyboardType:  TextInputType.emailAddress,
      decoration: InputDecoration(
        
        hintText: text,
        hintStyle: TextStyle(color: Colors.white,fontSize: 15),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(4)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(4)
        )
      ),
    );
  }
}
