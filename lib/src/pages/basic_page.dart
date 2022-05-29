import 'package:flutter/material.dart';


final estiloTitulo    = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _crearImagen(),
          _crearTitulo(),     
          _crearAcciones(),      
          _crearTexto(), 
        ],
      )
    );
  }
 Widget _crearImagen(){
    return Image(
            image: NetworkImage('https://www.ettu.org/images/redaktion/News/2021/09_September/big-view_09e98_f_666x375.jpg')
            );
  }
 Widget _crearTitulo(){


    return Container(
              padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Mundial de tenis de mesa', style: estiloTitulo,),
                        SizedBox(height: 7.0),
                        Text('Escenario principal', style: estiloSubTitulo,),
                      ],
                                ),
                  ),
              Icon (Icons.star, color: Colors.red, size: 30.0),
              Text('5', style: TextStyle(fontSize: 20.0),)
              ],
             ),
            );
  }

  Widget _crearAcciones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _accion(Icons.call, 'CALL'),
        _accion(Icons.near_me, 'ROUTE'),
        _accion(Icons.share, 'SHARE'),
      ],
    );

  }
  Widget _accion(IconData icon, String texto){
      return Column(
          children: [

            Icon( icon, color: Colors.blue, size: 40.0, ),
            SizedBox( height: 5.0,),
            Text( texto, style: TextStyle(fontSize: 15, color: Colors.blue, fontWeight: FontWeight.bold)),
          ],
        );
  }
  
  Widget _crearTexto() {

    return Container(
      padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.',
        textAlign: TextAlign.justify,
         ),
    );
  }
}
