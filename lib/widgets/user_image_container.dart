import 'package:flutter/material.dart';

SizedBox userImageContainer(double size) {
  return SizedBox(
    height: size,
    width: size,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Image.asset('assets/no_user.jpeg'),
    ),
  );
}
