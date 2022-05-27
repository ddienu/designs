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
          Image(
            image: NetworkImage('https://www.ettu.org/images/redaktion/News/2021/09_September/big-view_09e98_f_666x375.jpg')
            ),
            Container(
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
            )
        ],
      )
    );
  }
}