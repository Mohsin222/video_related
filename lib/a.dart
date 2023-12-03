import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class A extends StatelessWidget {
  const A({super.key});

  @override
  Widget build(BuildContext context, ) {
    // final width= MediaQuery.of(context).size.width;
    // print(width);
    return Scaffold(
      body: AspectRatio(
        aspectRatio: 500/900,
        child: Container(
          // height: double.infinity,
          // width: double.infinity,
          color: Colors.red,
           
          
        ),
      ),
    );
  }
}