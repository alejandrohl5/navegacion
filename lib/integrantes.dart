import 'package:flutter/material.dart';

class integrantes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      
        children: [
          SizedBox(height: 30,),
          Text("Integrantes:",textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),

          Text("1. Ramirez Roman, James Levi",textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          Image.asset("assets/james.png",height: 400,width: 400,),

          SizedBox(height: 10,),


          Text("2. Usquiano Silva, Milagros",textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          Image.asset("assets/milagros.png",height: 400,width: 400,),
      
          SizedBox(height: 10,),

          Text("3. Torres Simbron, Rosario Margarita",textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          Image.asset("assets/rosario.png",height: 400,width: 400,),
    
          SizedBox(height: 10,),
      
          Text("4. Huaman Villano, Edgar Sebastian",textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),),
          Image.asset("assets/edgar.png",height: 400,width: 400,),

          SizedBox(height: 50,),

          Text("5.Hurtado Lopez, Víctor Alejandro",textAlign:TextAlign.center,style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,),),
          SizedBox(height: 20,),
          Image.asset("assets/victorino.png",height: 400,width: 400,),
        SizedBox(height: 30,),
        ],
      
    );
    
  }
}