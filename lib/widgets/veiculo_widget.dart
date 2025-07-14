import 'package:flutter/material.dart';

abstract class VeiculoWidget extends StatelessWidget {
  final String nome;
  final double preco;
  final String desc;
  final String imagemURl;
  final VoidCallback onTap;

  const VeiculoWidget({
    super.key,
    required this.nome,
    required this.preco,
    required this.desc,
    required this.imagemURl,
    required this.onTap});


}
