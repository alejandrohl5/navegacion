import 'package:flutter/material.dart';
import 'home.dart';
import 'tabbar.dart';
import 'textfield.dart';
import 'stepper.dart';
import 'alertDialog.dart';
import 'integrantes.dart';
void main() => runApp(Aplication());


class Aplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plataformas Móviles',
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
        primaryColor:Color.fromARGB(255, 6, 68, 139),
      ),
    );
  }

  
}



class inicio extends StatelessWidget {
  const inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      
      child: Column(       
        children:[
          SizedBox(height: 80,),
          Image.asset('assets/icono1.png'),

        ],
      ),
    );
  }
}