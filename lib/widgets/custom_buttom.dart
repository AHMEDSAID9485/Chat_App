import 'package:flutter/material.dart';

class custom_buttom extends StatelessWidget {
  final String name;
  final Function()? on_Tap;
  const custom_buttom({
    super.key, required this.name, this.on_Tap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: on_Tap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white
        ),
        child: Center(child: Text(name,style: TextStyle(color: Colors.black),)),
      ),
    );
  }
}
