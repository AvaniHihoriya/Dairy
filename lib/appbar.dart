import 'package:flutter/material.dart';

PreferredSizeWidget MyAppbar(){
  return PreferredSize(
      child: AppBar(
      title: Text("welcome to dairy"),
      backgroundColor: Color(0xff8ac0f3),
  ),
      preferredSize: Size.fromHeight(54),


  );
}
