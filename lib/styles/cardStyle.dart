import 'package:flutter/material.dart';
import 'package:mix/mix.dart';

final styleContainer = Style(
  $box.width(450),
  $box.height(500),
  $box.padding.all(10),
  $box.borderRadius.all.circular(10),
  $box.margin.bottom(20),

  $box.color(const Color.fromARGB(255, 82, 82, 82).withOpacity(0.1)),
  $box.border.all.color(const Color.fromARGB(255, 82, 82, 82).withOpacity(0.2)),
  $box.border.all.width(1),
  $box.shadow(
    color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.1),
    blurRadius: 10,
    spreadRadius: 0,
    offset: Offset(0, 4),
  ),
);

/**
 *
 *       width: 400,
        height: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.amber),
 */