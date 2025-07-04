import 'dart:math';

import 'package:atvd42/widgets/VeiculoWidget.dart';
import 'package:flutter/material.dart';

class CalulatorScreen extends StatefulWidget {
    final VeiculoWidget veiculoSelecinado;
    const CalulatorScreen({ Key? key, required this.veiculoSelecinado }) : super(key: key);

  @override
  _CalulatorScreenState createState() => _CalulatorScreenState();
}

class _CalulatorScreenState extends State<CalulatorScreen> {
  final _formkey = GlobalKey<FormState>();
  final _inputController = TextEditingController();
  final _input2Controller = TextEditingController();
  late double valorVeiculo;
  double valorFinanciado = 0;
  double valorParcelas = 0;
    double valorTotalComJuros = 0;
  double jurosMensal = 0.02; 

  @override
  void initState() {
    super.initState();
    valorVeiculo = widget.veiculoSelecinado.preco;
  }

  @override
  void dispose(){
    _inputController.dispose();
    _input2Controller.dispose(); // Adicione esta linha também
    super.dispose();
  }

  void _calculate(){
    if (_formkey.currentState!.validate()) {
      setState(() {
       String numParcelas = _input2Controller.text;
          String valorDeEntrada = _inputController.text;
          double valueParcelas = double.parse(numParcelas);
          double valueEntrada = double.parse(valorDeEntrada);
          valorFinanciado = valorVeiculo - valueEntrada;
          valorTotalComJuros = valorFinanciado * pow(1 + jurosMensal, valueParcelas);
          valorParcelas = valorTotalComJuros / valueParcelas;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculo do Financiamento"),),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          children: [
            Image.network(widget.veiculoSelecinado.imagemURl),
            Text(widget.veiculoSelecinado.nome, style: TextStyle(fontSize: 32),),
            Form(
              key: _formkey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _inputController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Valor de entrada...",
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "digite algo";
                      }
                      if (double.tryParse(value) == null) {
                        return "Digite um valor valido";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  TextFormField(
                    controller: _input2Controller,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Numero de parcelas...",
                      border: OutlineInputBorder()
                    ),
                    validator: (value){
                      if (value == null || value.isEmpty) {
                        return "digite algo";
                      }
                      if (double.tryParse(value) == null) {
                        return "Digite um valor valido";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: _calculate, child: Text("Calcular")),
                  SizedBox(height: 20,),
                  Text("Valor das parcelas: R\$ ${valorParcelas.toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("Valor financiado: R\$ ${valorFinanciado.toStringAsFixed(2)}",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}