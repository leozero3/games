import 'dart:io';
import 'package:flutter/material.dart';
import 'package:games/launch.dart';

void main() {
  runApp(MyApp());
}

Launch launch = Launch();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Launcher de Jogo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  launch.launchGame();
                },
                child: Text('Abrir Payday 3'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  launch.closeExplorer();
                },
                child: Text('Fechar o Explorer.exe'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  launch.restartExplorer();
                },
                child: Text('Reiniciar o Explorer.exe'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
