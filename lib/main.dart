import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int contador = 0;
  late String msg = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateful Exemplo'),
        ),
        body: Center(
          child: Column(
            children: [
              Text('Voce cliou $contador vezes'),
              Text(msg),
              ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {
          setState(() {
            if(contador<10){
              contador++;
            }
            else{
              msg = 'Voce atingiu o maximo de cliques';
            }
          });  
        },
        child: Icon(Icons.add),
        ),
      ),
    );
  }
}
