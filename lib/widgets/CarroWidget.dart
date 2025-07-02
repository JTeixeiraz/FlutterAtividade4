import 'package:atvd42/styles/cardStyle.dart';
import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

import 'VeiculoWidget.dart';

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
      child: Box(
        style: styleContainer,
        child: Column(
          children: <Widget>[
            Image.network(imagemURl, height: 50,),
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