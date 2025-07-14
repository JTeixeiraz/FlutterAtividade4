import 'package:flutter/material.dart';
///
///
///          Testando um input para poder conferir como é sua funcionalidade no codigo pratico
///
///
class MyInputWidget extends StatefulWidget {
  const MyInputWidget({super.key});

  @override
  State<MyInputWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyInputWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          decoration: const InputDecoration(
            labelText: 'Digite algo',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            
          },
        ),
        ElevatedButton(
          onPressed: () {
            
          },
          child: const Text('Obter Valor'),
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