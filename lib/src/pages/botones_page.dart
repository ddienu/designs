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

          SingleChildScrollView(
            child: Column(
              children:[
              _titulos(),
              _botonesRedondeados(),
              ],
            ), 
          ),
        ],
      ),
      bottomNavigationBar: _bottonNavigationBar(context),
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
   
     Widget _titulos() {

       return SafeArea(
         child: Container(
           padding: EdgeInsets.all(20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold),),
               SizedBox(height: 10.0,),
               Text('Classify this transaction into a particulary category', style: TextStyle(color: Colors.white, fontSize: 18.0,)),
             ],
           ),
         ),
       );
     }
     
       Widget _bottonNavigationBar(context) {

         return Theme(
           data: Theme.of(context).copyWith(
             canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
           ), 
           child:  BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0, color: Colors.pinkAccent,),   
            label: '',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0, color: Color.fromRGBO(116, 117, 152, 1.0),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0, color: Color.fromRGBO(116, 117, 152, 1.0),),
            label: '',
          ),    
        ]
      ),
    );
   }
   
    Widget  _botonesRedondeados() {
      return Table(
        children: [
          TableRow(
            children: [
              _crearBotonRedondeados(Colors.blue, Icons.handshake, 'Hello'),
              _crearBotonRedondeados(Colors.pinkAccent, Icons.border_all, 'General'),
            ],
          ),
          TableRow(
            children: [
              _crearBotonRedondeados(Colors.red, Icons.business, 'Business'),
              _crearBotonRedondeados(Colors.orange, Icons.shop_two_rounded, 'Shop'),
            ],
          ),
          TableRow(
            children: [
              _crearBotonRedondeados(Colors.blue, Icons.movie_filter_rounded, 'Entertaiment'),
              _crearBotonRedondeados(Colors.green, Icons.local_grocery_store, 'Grocery'),
            ],
          ),
          TableRow(
            children: [
              _crearBotonRedondeados(Colors.deepOrange, Icons.image, 'Images'),
              _crearBotonRedondeados(Colors.deepPurple, Icons.help_center, 'Contact'),
            ],
          ),
        ],
      );
    }
    
      Widget _crearBotonRedondeados(Color color, IconData icono, String texto) {


        return ClipRRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
            child: Container(
              height: 180.0,
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(height: 5.0),
                  CircleAvatar(
                    child: Icon( icono ),
                    radius: 30.0,
                    backgroundColor: color,
                  ),
                  Text(texto , style: TextStyle(color: color)),
                  SizedBox(height: 5.0),
                ],
              ),
            ),
          ),
        );
      }
}