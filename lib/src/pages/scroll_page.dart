import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {
  ScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: [
          _pagina1(),
          _pagina2(),
        ],
      )
    );
  }
  
  Widget _pagina1() {
    return Stack(
      children: [
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );





    
  }
  Widget _pagina2() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: ElevatedButton(
          style: ButtonStyle(
             shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(40.0),
                   )
                 ),
              ),
          onPressed: (){},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 25.0)),
          ),
         )
        ),
      );
  }
  
  Widget _colorFondo() {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );
  }
  
   Widget _imagenFondo() {
     return Container(
       height: double.infinity,
       width: double.infinity,
       child: Image(
         image: AssetImage('assets/9.1 scroll-1.png'),
         fit: BoxFit.cover,
         ),
         
     );
   }
   

   final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0);

  Widget _textos() {
    return  SafeArea(
      child: Column(
          children: [
            SizedBox(height: 50.0,),
            Text('11°', style: estiloTexto,),
            Text('Miércoles', style: estiloTexto,),
            Expanded(child: Container()),
            Icon(Icons.keyboard_arrow_down, size: 70.0, color: Colors.white,)
          ],
        ),
    );
  }

}