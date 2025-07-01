import 'package:mix/mix.dart';

final styleContainer = Style(
  $box.width(200),
  $box.height(400),
  $box.padding.all(10),
  $box.borderRadius.all.circular(10),
  $box.color.blue(),
  $box.margin.bottom(20)
);

/**
 * 
 *         width: 400,
        height: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), color: Colors.amber),
 */