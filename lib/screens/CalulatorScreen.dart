import 'package:flutter/material.dart';

class CalulatorScreen extends StatefulWidget {
  const CalulatorScreen({ Key? key }) : super(key: key);

  @override
  _CalulatorScreenState createState() => _CalulatorScreenState();
}

class _CalulatorScreenState extends State<CalulatorScreen> {
  final _formkey = GlobalKey<FormState>();
  final _inputController = TextEditingController();

  @override
  void dispose(){
    _inputController.dispose();
    super.dispose();
  }

  void _calculate(){
    if (_formkey.currentState!.validate()) {
      String inputValue = _inputController.text;
      //calculo
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculo do Financiamento"),),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formkey,
          child: Column(
              children: [
                TextFormField(
                  controller: _inputController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Digite um valor",
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
                ElevatedButton(onPressed: _calculate, child: Text("Calcular"))
              ],
            )
          ),
        ),
    );
  }
}