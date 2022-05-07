


import 'package:flutter/material.dart';

class TabBarDemo extends StatelessWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.food_bank)),
                Tab(icon: Icon(Icons.people_alt)),
              ],
            ),
            title:  Text('Tabs Demo',textAlign: TextAlign.center,style: TextStyle(fontSize: 30),),
            backgroundColor: Color.fromARGB(255, 6, 68, 139),
          ),
          body: TabBarView(
            
            children: [ 
              
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Text("ARROZ CHAUFA",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40,),),
                    SizedBox(height: 40,),
                    Image.network('https://comidasperuanas.net/wp-content/uploads/2016/11/Arroz-chaufa.webp'),
                  ],
                ),
              ),
              
              Container(
                child: ListView(
                  children: const <Widget>[
                    ListTile(
                      title: Text(
                        'Chef',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 6, 68, 139),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 12),
                    ListTile(
                      leading: Icon(Icons.food_bank_rounded),
                      title: Text('Victor Alejandro Hurtado Lopez'),
                      
                    ),
                    ListTile(
                      leading: Icon(Icons.food_bank),
                      title: Text('James Levi Ramirez Roman'),
                    ),
                    ListTile(
                      leading: Icon(Icons.food_bank_rounded),
                      title: Text('Milagros Usquiano Silva'),
                    ),
                    ListTile(
                      leading: Icon(Icons.food_bank_sharp),
                      title: Text('Edgard Huaman Villano'),
                    ),
                    ListTile(
                      leading: Icon(Icons.food_bank_rounded),
                      title: Text('Rosario Margarita Torrez Simbron'),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}







// ListView(
//                 children: const <Widget>[
//                   ListTile(
//                     title: Text(
//                       'Chef',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 25,
//                           color: Color.fromARGB(255, 6, 68, 139),
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   SizedBox(height: 12),
//                   ListTile(
//                     leading: Icon(Icons.food_bank_rounded),
//                     title: Text('Victor Alejandro Hurtado Lopez'),
                    
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.food_bank),
//                     title: Text('James Levi Ramirez Roman'),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.food_bank_rounded),
//                     title: Text('Milagros Usquiano Silva'),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.food_bank_sharp),
//                     title: Text('Edgard Huaman Villano'),
//                   ),
//                   ListTile(
//                     leading: Icon(Icons.food_bank_rounded),
//                     title: Text('Rosario Margarita Torrez Simbron'),
//                   ),
//                 ],
//               ),