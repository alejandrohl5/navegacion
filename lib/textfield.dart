import 'package:flutter/material.dart';


class textfield extends StatelessWidget {
  const textfield({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TextField',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'TextField'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String valorInput = '';
  final controllertext = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration:
                  const InputDecoration(hintText: "Ingrese el texto aquí"),
              onSubmitted: (String valortext) {
                cambiar(valortext);
              },
              controller: controllertext,
            ),
            Text(valorInput),
          ],
        ),
      ),
    );
  }
 
  void cambiar(String valortext) {
    // ignore: avoid_print
    setState(() {
      controllertext.text = '';
      if(valortext == "perro"){
        valortext = "firulais".toUpperCase();
      }
      else if(valortext == "gato"){
        valortext = "michi".toUpperCase();
      }
        valorInput = valorInput + '\n' + valortext;
    });
  }
}


































































// class textfield extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         ),
//       home:  texto(),
      
//       );
//   }
// }


// class texto extends StatefulWidget {
//   texto({Key? key}) : super(key: key);

//   @override
//   State<texto> createState() => _textoState();
// }

// class _textoState extends State<texto> {
//   String valorInput = '';
//   final controllertext = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget> [
//             TextField(
//               decoration: 
//                 const InputDecoration(hintText:
//                 "Ingrese texto aqui"),
//                 onSubmitted: (String valortext){
//                 },
//                 controller:controllertext,
//             ),
            
//           const Text('',textAlign: TextAlign.center, style: TextStyle(fontSize: 30,),),
            
            
//           ],        
//         ),
        
//       ),
//     );
//   }

//   void cambiar(String valortext){
//     setState(() {
      
//     });
//   }
// }




