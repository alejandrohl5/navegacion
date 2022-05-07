import 'package:flutter/material.dart';
import 'package:navegacion/alertDialog.dart';
import 'package:navegacion/main.dart';
import 'package:navegacion/stepper.dart';
import 'package:navegacion/tabBar.dart';
import 'package:navegacion/textfield.dart';
import 'package:navegacion/integrantes.dart';


class Home extends StatefulWidget {

  HomeState createState() => HomeState();

}



class HomeState extends State<Home>{
  int _selecDrawerItem = 0;
  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0 : return inicio();
      case 1 : return textfield();
      case 2 : return TabBarDemo();
      case 3 : return stepper();
      case 4 : return alertDialog();
      case 5 : return integrantes();
    }
  }

_onSelectItem(int pos){
  Navigator.of(context).pop();
  setState(() {
    _selecDrawerItem = pos;
  });
}

@override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 68, 139),
        title: Text('Plataformas Móviles',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      drawer:Drawer(
        child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Ejercicio Hard',style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold)),
                accountEmail: Text('Docente: Henry Villanueva Monrroy', style: TextStyle(color: Colors.white,fontSize: 16, fontWeight: FontWeight.bold)),
                currentAccountPicture:Image.asset('assets/icono1.png') ),
              
            
            
              ListTile(
                title: Text('TexField'),
                leading: Icon(Icons.document_scanner),
                selected: (1 == _selecDrawerItem),
                onTap: (){
                _onSelectItem(1);
                },
              ),
              ListTile(
                title: Text('AlertDialog'),
                leading: Icon(Icons.photo),
                selected: (4 == _selecDrawerItem),
                onTap: (){
                _onSelectItem(4);
                },
              ),
              ListTile(
                title: Text('stepper'),
                leading: Icon(Icons.vaccines),
                selected: (3 == _selecDrawerItem),
                onTap: (){
                _onSelectItem(3);
                },
              ),
              ListTile(
                title: Text('TabBar'),
                leading: Icon(Icons.vaccines),
                selected: (2 == _selecDrawerItem),
                onTap: (){
                _onSelectItem(2);
                },
              ),
              ListTile(
                title: Text('Integrantes'),
                leading: Icon(Icons.dark_mode),
                selected: (5 == _selecDrawerItem),
                onTap: (){
                _onSelectItem(5);
                },
              ),

              Divider(height:25,),
            

              ListTile(
                title: Text('atrás'),
                leading: Icon(Icons.arrow_back),
                selected: (0 == _selecDrawerItem),
                onTap: (){
                _onSelectItem(0);
                },
              ),

            ],
            
          ),
        ),
        body: _getDrawerItemWidget(_selecDrawerItem),
    );
  }
}