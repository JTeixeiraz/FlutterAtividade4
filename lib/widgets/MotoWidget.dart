
import 'package:atvd42/styles/cardStyle.dart';
import 'package:mix/mix.dart';
import 'package:flutter/material.dart';

import 'VeiculoWidget.dart';

class Motowidget extends VeiculoWidget {

  final int numAssentos;
  final int numPortas;
  final double cilindradas;


  const Motowidget({
    Key? key,
    required this.numAssentos,
    required this.numPortas,
    required this.cilindradas,
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
      child: Box(
        style:styleContainer,
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