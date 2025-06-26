import 'package:flutter/material.dart';
import 'package:flutteratvd4/widgets/CarroWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: CarroWidget(numAssentos: 4, numPortas: 4, nome: "carrito", preco: 345.00, desc: "desc foda", imagemURl: "https://media.istockphoto.com/id/1443562748/pt/foto/cute-ginger-cat.jpg?s=612x612&w=0&k=20&c=OqlMF3bysUX6cVux5kKc1gqCGMghQpGc5ukyw1qG82s=", onTap: ()=>{})
          )
        )
      );
  }
}