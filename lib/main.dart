import 'package:atvd42/widgets/CaminhaoWidget.dart';
import 'package:atvd42/widgets/inputWidget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});



/*
  TODO: Input + Tela para inserir/calcular o valor de entrada e numero de parcelas;
        Adicionar função de calculo na classe veiculo (classe abstrata)

        Fazer o front

        ===========================================================================
        firebase integration

        firebase auth para admin and user

        admin: Adiciona ofertas e edita
        user: apenas pode comprar

        configurar o firebase para funcionar e listar todos os produtos/veiculos

  */


              // children: <Widget>[
              //   Caminhaowidget(numAssentos: 3, numPortas: 2, capacidadeDeCarga: 300, nome: "aaa", preco: 33.3, desc: "ssos", imagemURl: "https://media.istockphoto.com/id/1443562748/pt/foto/cute-ginger-cat.jpg?s=612x612&w=0&k=20&c=OqlMF3bysUX6cVux5kKc1gqCGMghQpGc5ukyw1qG82s=", onTap: ()=>{}),
              //   CarroWidget(numAssentos: 4, numPortas: 4, nome: "carrito", preco: 345.00, desc: "desc foda", imagemURl: "https://media.istockphoto.com/id/1443562748/pt/foto/cute-ginger-cat.jpg?s=612x612&w=0&k=20&c=OqlMF3bysUX6cVux5kKc1gqCGMghQpGc5ukyw1qG82s=", onTap: ()=>{}),
              // ],
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: [
                CarouselSlider(items:[
                  Caminhaowidget(numAssentos: 3, numPortas: 3, capacidadeDeCarga: 4444, nome: "nome", preco: 455, desc: "fdgdfgd", imagemURl: "https://media.istockphoto.com/id/1443562748/pt/foto/cute-ginger-cat.jpg?s=612x612&w=0&k=20&c=OqlMF3bysUX6cVux5kKc1gqCGMghQpGc5ukyw1qG82s=", onTap: ()=>{}),
                  Caminhaowidget(numAssentos: 3, numPortas: 3, capacidadeDeCarga: 4444, nome: "nome", preco: 455, desc: "fdgdfgd", imagemURl: "https://media.istockphoto.com/id/1443562748/pt/foto/cute-ginger-cat.jpg?s=612x612&w=0&k=20&c=OqlMF3bysUX6cVux5kKc1gqCGMghQpGc5ukyw1qG82s=", onTap: ()=>{}),
                  Caminhaowidget(numAssentos: 3, numPortas: 3, capacidadeDeCarga: 4444, nome: "nome", preco: 455, desc: "fdgdfgd", imagemURl: "https://media.istockphoto.com/id/1443562748/pt/foto/cute-ginger-cat.jpg?s=612x612&w=0&k=20&c=OqlMF3bysUX6cVux5kKc1gqCGMghQpGc5ukyw1qG82s=", onTap: ()=>{}),
                ],
                    options: CarouselOptions(height: 400, 
                    autoPlay: false,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    viewportFraction: 0.6,
                    enableInfiniteScroll: false,
                    padEnds: true,
                    initialPage: 0,
                  )
                ),
              ],
            )
          )
          )
        )
      );
  }
}
