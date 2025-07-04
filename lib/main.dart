import 'package:atvd42/widgets/CaminhaoWidget.dart';
import 'package:atvd42/widgets/VeiculoWidget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:atvd42/screens/CalulatorScreen.dart';
void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: myApp()
    );
  }
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [

            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple, Colors.orange],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),


            SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: CarouselSlider(
                              items: [
                                Caminhaowidget(
                                  numAssentos: 3,
                                  numPortas: 3,
                                  capacidadeDeCarga: 4444,
                                  nome: "Caminhão A",
                                  preco: 455,
                                  desc: "Modelo robusto para carga pesada.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                                Caminhaowidget(
                                  numAssentos: 3,
                                  numPortas: 3,
                                  capacidadeDeCarga: 5000,
                                  nome: "Caminhão B",
                                  preco: 600,
                                  desc: "Ideal para longas distâncias.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                                Caminhaowidget(
                                  numAssentos: 2,
                                  numPortas: 2,
                                  capacidadeDeCarga: 3000,
                                  nome: "Caminhão Esoecuak",
                                  preco: 520,
                                  desc: "Compacto e econômico.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {
                                    Navigator.push(context, 
                                    MaterialPageRoute(builder: (context)=>
                                      CalulatorScreen(veiculoSelecinado: Caminhaowidget(numAssentos: 3, numPortas: 3, capacidadeDeCarga: 333, nome: "nome", preco: 33, desc: "desc", imagemURl:  "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg", onTap: (){
                                      }),)
                                    ));
                                  },
                                ),
                              ],
                              options: CarouselOptions(
                                height: 300,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                viewportFraction: 0.7,
                                enableInfiniteScroll: false,
                                padEnds: true,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: CarouselSlider(
                              items: [
                                Caminhaowidget(
                                  numAssentos: 3,
                                  numPortas: 3,
                                  capacidadeDeCarga: 4444,
                                  nome: "Caminhão A",
                                  preco: 455,
                                  desc: "Modelo robusto para carga pesada.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                                Caminhaowidget(
                                  numAssentos: 3,
                                  numPortas: 3,
                                  capacidadeDeCarga: 5000,
                                  nome: "Caminhão B",
                                  preco: 600,
                                  desc: "Ideal para longas distâncias.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                                Caminhaowidget(
                                  numAssentos: 2,
                                  numPortas: 2,
                                  capacidadeDeCarga: 3000,
                                  nome: "Caminhão C",
                                  preco: 520,
                                  desc: "Compacto e econômico.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                              ],
                              options: CarouselOptions(
                                height: 300,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                viewportFraction: 0.7,
                                enableInfiniteScroll: false,
                                padEnds: true,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                            child: CarouselSlider(
                              items: [
                                Caminhaowidget(
                                  numAssentos: 3,
                                  numPortas: 3,
                                  capacidadeDeCarga: 4444,
                                  nome: "Caminhão A",
                                  preco: 455,
                                  desc: "Modelo robusto para carga pesada.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                                Caminhaowidget(
                                  numAssentos: 3,
                                  numPortas: 3,
                                  capacidadeDeCarga: 5000,
                                  nome: "Caminhão B",
                                  preco: 600,
                                  desc: "Ideal para longas distâncias.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                                Caminhaowidget(
                                  numAssentos: 2,
                                  numPortas: 2,
                                  capacidadeDeCarga: 3000,
                                  nome: "Caminhão C",
                                  preco: 520,
                                  desc: "Compacto e econômico.",
                                  imagemURl:
                                      "https://www.totvs.com/wp-content/uploads/2024/01/caminhao-truck.jpg",
                                  onTap: () {},
                                ),
                              ],
                              options: CarouselOptions(
                                height: 300,
                                enlargeCenterPage: true,
                                enlargeFactor: 0.3,
                                viewportFraction: 0.7,
                                enableInfiniteScroll: false,
                                padEnds: true,
                              ),
                            ),
                          ),
                        ]
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}