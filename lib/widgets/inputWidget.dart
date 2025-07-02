import 'package:flutter/material.dart';
/**
 *
 *
 *          Testando um input para poder conferir como é sua funcionalidade no codigo pratico
 *
 *///
class MyInputWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyInputWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: InputDecoration(
            labelText: 'Digite algo',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            print('Valor digitado: $value');
          },
        ),
        ElevatedButton(
          onPressed: () {
            print('Valor do controller: ${_controller.text}');
          },
          child: Text('Obter Valor'),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}