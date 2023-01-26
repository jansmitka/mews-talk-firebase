import 'package:flutter/material.dart';

Color generalBgColor = Colors.grey[300]!;
Color darkShadowColor = Colors.grey[700]!;
Color lightShadowColor = Colors.white;
double offSet = 3.0;
double borderRadius = 25.0;

TextStyle titleBig = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
TextStyle titleMedium =
    const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
TextStyle dateStyle = const TextStyle(
    fontSize: 11, fontWeight: FontWeight.normal, color: Colors.grey);

BoxDecoration shadowBoxDecoration() {
  return BoxDecoration(
    color: generalBgColor,
    borderRadius: BorderRadius.circular(borderRadius),
    boxShadow: [
      boxShadow(offSet, darkShadowColor),
      boxShadow(-offSet, lightShadowColor),
    ],
  );
}

BoxShadow boxShadow(double offset, Color color) {
  return BoxShadow(
    color: color,
    offset: Offset(offset, offset),
    blurRadius: 15.0,
    spreadRadius: 1.0,
  );
}
