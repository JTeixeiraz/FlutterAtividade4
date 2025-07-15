import 'package:atvd42/widgets/caminhao_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:atvd42/screens/calculator_screen.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
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
            ],
          ),
        ),
      ),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}