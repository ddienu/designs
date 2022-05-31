import 'package:flutter/material.dart';

import 'dart:ui';
import 'dart:math';



class BotonesPage extends StatelessWidget {
  const BotonesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _fondoApp(),
        ],
      ),
    );
  }
  
   Widget _fondoApp() {


     final gradiente = Container(
       width: double.infinity,
       height: double.infinity,
       decoration: BoxDecoration(
         gradient: LinearGradient(
           begin: Alignment.topCenter,
           end: Alignment.bottomCenter,
           colors: [
             Color.fromRGBO(52, 54, 101, 1.0),
             Color.fromRGBO(35, 37, 57, 1.0),
           ])
       ),
     );

     final cajaRosada = Transform.rotate(
       angle: -pi / 5.0,
       child: Container(
       height: 360.0,
       width: 360.0,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(90.0),
         gradient: LinearGradient(
           colors: [
             Color.fromRGBO(236, 98, 188, 1.0),
             Color.fromRGBO(241, 142, 172, 1.0),
           ]
       )
      )
     )
   );

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosada,)        
      ],
    );
   }
}