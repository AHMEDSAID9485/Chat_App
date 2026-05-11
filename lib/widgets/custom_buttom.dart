import 'package:flutter/material.dart';

class custom_buttom extends StatelessWidget {
  final String name;
  const custom_buttom({
    super.key, required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white
      ),
      child: Center(child: Text(name,style: TextStyle(color: Colors.black),)),
    );
  }
}
