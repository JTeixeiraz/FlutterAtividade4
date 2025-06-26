import 'package:flutter/material.dart';
import 'package:flutteratvd4/widgets/VeiculoWidget.dart';

class CarroWidget extends VeiculoWidget {
  
  final int numAssentos;
  final int numPortas;
  const CarroWidget({
    Key? key, 
    required this.numAssentos,
    required this.numPortas,
    required  nome, 
    required preco, 
    required desc, 
    required imagemURl, 
    required onTap})
  : super(key: key, nome: nome, preco: preco, desc: desc, imagemURl: imagemURl, onTap: onTap);

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 400,
        height: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.amber),
        child: Row(
          children: <Widget>[
            Image.network(imagemURl),
            Column(
              children: [
                Text(nome),
                Text(desc),
                Text("R\$ ${preco.toStringAsFixed(2)}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}