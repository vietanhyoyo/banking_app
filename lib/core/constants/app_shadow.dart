import 'package:flutter/material.dart';

class AppShadow {
  static BoxShadow cardShadow = BoxShadow(
    color: Colors.black.withOpacity(0.15),
    blurRadius: 10, 
    offset: const Offset(0, -2), 
  );
}
