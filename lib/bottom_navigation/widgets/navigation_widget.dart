import 'package:flutter/material.dart';

class NavigationWidget extends StatelessWidget {

  final Color color;
  final String text;
  const NavigationWidget({ Key? key,required this.color, required this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(child: Text(text)),
    );
  }
}