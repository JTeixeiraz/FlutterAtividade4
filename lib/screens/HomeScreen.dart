import 'package:flutter/material.dart';
import 'package:atvd42/widgets/caminhao_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:atvd42/screens/calculator_screen.dart';
import 'package:atvd42/widgets/carro_widget.dart';
import 'package:atvd42/widgets/moto_widget.dart';

class HomeScreen extends StatelessWidget {
const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha seu veículo'),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 255, 255, 255), Color.fromARGB(255, 223, 223, 223)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
          ),
          SafeArea(
            child:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Selecione um veículo',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(""),
              const SizedBox(height: 8),
              const Text(
                'Temos as melhores opções para você',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              CarouselSlider(
                items: [
                  CaminhaoWidget(
                    numAssentos: 3,
                    numPortas: 3,
                    capacidadeDeCarga: 4444,
                    nome: "Caminhão A",
                    preco: 455000,
                    desc: "Modelo robusto para carga pesada.",
                    imagemURl:
                        "lib/images/caminhao.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: CaminhaoWidget(
                                        numAssentos: 3,
                                        numPortas: 3,
                                        capacidadeDeCarga: 4444,
                                        nome: "Caminhão A",
                                        preco: 455000,
                                        desc: "Modelo robusto para carga pesada.",
                                        imagemURl:
                                            "lib/images/caminhao.jpg",
                                        onTap: () {}),
                                  )
                                )
                              );
                    },
                  ),
                  CaminhaoWidget(
                    numAssentos: 3,
                    numPortas: 3,
                    capacidadeDeCarga: 5000,
                    nome: "Caminhão B",
                    preco: 50000,
                    desc: "Ideal para longas distâncias.",
                    imagemURl:
                        "lib/images/caminhao2.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: CaminhaoWidget(
                                        numAssentos: 3,
                                        numPortas: 3,
                                        capacidadeDeCarga: 5000,
                                        nome: "Caminhão B",
                                        preco: 50000,
                                        desc: "Ideal para longas distâncias.",
                                        imagemURl:
                                            "lib/images/caminhao2.jpg",
                                        onTap: () {}),
                                  )
                                )
                              );
                    },
                  ),
                  CaminhaoWidget(
                    numAssentos: 2,
                    numPortas: 2,
                    capacidadeDeCarga: 3000,
                    nome: "Caminhão C",
                    preco: 52000,
                    desc: "Compacto e econômico.",
                    imagemURl:
                        "lib/images/caminhao3.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: CaminhaoWidget(
                                        numAssentos: 2,
                                        numPortas: 2,
                                        capacidadeDeCarga: 3000,
                                        nome: "Caminhão C",
                                        preco: 52000,
                                        desc: "Compacto e econômico.",
                                        imagemURl:
                                            "lib/images/caminhao3.jpg",
                                        onTap: () {}
                                      ),
                                  )
                                )
                      );
                    },
                  ),
                ],
                options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  viewportFraction: 0.7,
                  enableInfiniteScroll: false,
                  padEnds: true,
                ),
              ),


              const SizedBox(height: 20),


              CarouselSlider(
                items: [
                  CarroWidget(
                    numAssentos: 3,
                    numPortas: 3,
                    cavalos: 300,
                    nome: "Carro A",
                    preco: 800000,
                    desc: "Modelo esportivo.",
                    imagemURl:
                        "lib/images/Ford-Mustang-Black-Shadow.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: CarroWidget(
                                        numAssentos: 3,
                                        numPortas: 3,
                                        cavalos: 300,
                                        nome: "Carro A",
                                        preco: 800000,
                                        desc: "Modelo esportivo.",
                                        imagemURl:
                                            "lib/images/Ford-Mustang-Black-Shadow.jpg",
                                        onTap: () {}),
                                  )
                                )
                              );
                    },
                  ),
                  CarroWidget(
                    numAssentos: 3,
                    numPortas: 3,
                    cavalos: 250,
                    nome: "Carro B",
                    preco: 60000,
                    desc: "Modelo econômico.",
                    imagemURl:
                        "lib/images/carro2.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: CarroWidget(
                                        numAssentos: 3,
                                        numPortas: 3,
                                        cavalos: 250,
                                        nome: "Carro B",
                                        preco: 60000,
                                        desc: "Modelo econômico.",
                                        imagemURl:
                                            "lib/images/carro2.jpg",
                                        onTap: () {}),
                                  )
                                )
                              );
                    },
                  ),
                  CarroWidget(
                    numAssentos: 2,
                    numPortas: 2,
                    cavalos: 200,
                    nome: "Carro C",
                    preco: 120000,
                    desc: "Modelo Família.",
                    imagemURl:
                        "lib/images/carro3.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: CarroWidget(
                                        numAssentos: 2,
                                        numPortas: 2,
                                        cavalos: 200 ,
                                        nome: "Carro C",
                                        preco: 120000,
                                        desc: "Modelo Família.",
                                        imagemURl:
                                            "lib/images/carro3.jpg",
                                        onTap: () {}
                                      ),
                                  )
                                )
                      );
                    },
                  ),
                ],
                options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  viewportFraction: 0.7,
                  enableInfiniteScroll: false,
                  padEnds: true,
                ),
              ),

              const SizedBox(height: 20),


              CarouselSlider(
                items: [
                  MotoWidget(
                    cilindradas: 500,
                    nome: "Moto A",
                    preco: 15000,
                    desc: "Modelo para baixo orçamento.",
                    imagemURl:
                        "lib/images/moto1.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: MotoWidget(
                                        cilindradas: 500,
                                        nome: "Moto A",
                                        preco: 15000,
                                        desc: "Modelo para baixo orçamento.",
                                        imagemURl:
                                            "lib/images/moto1.jpg",
                                        onTap: () {}),
                                  )
                                )
                              );
                    },
                  ),
                  MotoWidget(
                    cilindradas: 600,
                    nome: "Moto B",
                    preco: 68000,
                    desc: "Modelo esportivo.",
                    imagemURl:
                        "lib/images/moto2.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: MotoWidget(
                                        cilindradas: 600,
                                        nome: "Moto B",
                                        preco: 68000,
                                        desc: "Modelo esportivo.",
                                        imagemURl:
                                            "lib/images/moto2.jpg",
                                        onTap: () {}),
                                  )
                                )
                              );
                    },
                  ),
                  MotoWidget(
                    cilindradas: 300,
                    nome: "Moto C",
                    preco: 25000,
                    desc: "Modelo para iniciantes.",
                    imagemURl:
                        "lib/images/moto3.jpg",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CalculatorScreen(
                                    veiculoSelecinado: MotoWidget(
                                        cilindradas: 300,
                                        nome: "Moto C",
                                        preco: 25000,
                                        desc: "Modelo para iniciantes.",
                                        imagemURl:
                                            "lib/images/moto3.jpg",
                                        onTap: () {}
                                      ),
                                  )
                                )
                      );
                    },
                  ),
                ],
                options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  viewportFraction: 0.7,
                  enableInfiniteScroll: false,
                  padEnds: true,
                ),
              ),
            ],
          ),
        ),
      ),
      ),
      ],
    ),
  );
}
}