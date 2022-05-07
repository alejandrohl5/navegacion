import 'package:flutter/material.dart';
import 'stepper.dart';

class alertDialog extends StatelessWidget {
  const alertDialog({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlertDialog',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: 'Alertas con Flutter'),
      initialRoute: '/',
      routes: {
        
        '/siguiente': (context) => stepper(),
      },

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
  //String _valortext = "";

  void showAlert(String value) {
    AlertDialog alerta = AlertDialog(
      title: const Text('AlertDialog Title'),
      content: Text(value),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            //resultadoAlerta("no");
            Navigator.pushNamed(context, '/');
    
                
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            //resultadoAlerta("yes");
            Navigator.pushNamed(context, '/siguiente');
          },
          child: const Text('OK'),
        ),
      ],
    );
    showDialog(context: context, builder: (BuildContext context) => alerta);
  }

  // //void resultadoAlerta(String valor) {
  //   print("Tu selección fue " + valor.toString());
  // }

  // void _onChanged(String value) {
  //   setState(() {
  //     _valortext = value;
  //   });
  // }

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
            ElevatedButton(
                onPressed: () {
                  showAlert('Hola Somos Grupo Workbot');
                },
                child: const Text("Ver Alerta"))
          ],
        ),
      ),
    );
  }
}