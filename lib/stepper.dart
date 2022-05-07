import 'package:flutter/material.dart';

class stepper extends StatefulWidget {
  stepper({Key? key}) : super(key: key);

  @override
  State<stepper> createState() => _stepperState();
}

class _stepperState extends State<stepper> {
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      
      body: Stepper(currentStep: _currentStep,
      onStepContinue: (){
        if(_currentStep >= 3) return;
        setState(() {
          _currentStep++;
        });
      },onStepCancel: (){
        if(_currentStep <= 0) return;
        setState(() {
          _currentStep--;
        });
        
      },
  
      

        steps: [
          const Step(title: Text("paso1"), 
          content: Text("Comenzamos cociendo el arroz hasta que nos quede al dente, más bien durito, Este punto es importante ya que al final del proceso el arroz tendrá un momento de fritura.")),
          const Step(title: Text("paso2"), 
          content:Text("Ponemos la cazuela al fuego. Añadimos el agua y el arroz, todo junto.Cuando comience a hervir dejamos el arroz unos 4 minutos hasta que se evapore el agua. Cuando veamos que no hay burbujas de agua sobre la superficie del arroz, bajamos el fuego al 3 de temperatura, ni al mínimo ni al medio de temperatura, y tapamos la cazuela.")),
          const Step(title: Text("paso3"), 
          content: Text("Dejamos así durante 14 minutos. Dejamos reposar. Si tienes dudas, no deje de ver el vídeo que os muestro a continuación. Mi recomendación es cocer el arroz sin sal. Luego le vamos a añadir salsa de soja que le aporta sal a la receta, de modo que al unirse al arroz puede dar pie a que el chaufa resulte salado. Hay que ser precavidos con eso.")),
          const Step(title: Text("paso4"), 
          content: Text("No os paséis con la cocción del arroz, si está muy cocido, quedará demasiado blando y no nos va a servir para la receta. Reservamos el arroz."))
        ])));
  }
}