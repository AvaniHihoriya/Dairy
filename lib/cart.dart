import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child:Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            child: Text("Go to shop and take it by your self",style: TextStyle(
              fontSize: 30,
              color: Colors.black45
            ),
            ),),
        )
        ),
      ),
    );
  }
}
