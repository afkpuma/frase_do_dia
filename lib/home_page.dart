import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _frases = [
    'Não há ferimento mais grave do que aquele feito por um falso amigo',
    ' Quando você guarda rancor, só está causando dor a você mesmo. A outra pessoa provavelmente não quer saber',
    'Ninguém viverá verdadeiramente em paz, se continuar guardando sentimentos ruins dentro de si',
    'Nada vale uma mentira. Ela pode te salvar de uma situação delicada agora, mas irá te magoar muito no futuro',
  ];

  var _fraseGerada;

  void _gerarFrase() {
    var sort = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[sort];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frases do dia'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          //width: double.infinity,
          padding: const EdgeInsets.all(16.0),
          // decoration: BoxDecoration(
          //   border: Border.all(width: 3, color: Colors.amber),
          // ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/logo.jpg'),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text(
                  'Nova Frase',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
