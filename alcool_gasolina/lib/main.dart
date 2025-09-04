import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController alcoolController = TextEditingController();
  final TextEditingController gasolinaController = TextEditingController();
  String _resultado = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alcool vs Gasolina"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
            width: 80.0,
            height: 80.0,
            child: Image(image: AssetImage("images/gas.png")),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              controller: alcoolController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Valor do Alcool",
                prefix: Text("R\$"),
                labelStyle: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            child: TextField(
              controller: gasolinaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Valor da Gasolina",
                prefix: Text("R\$"),
                labelStyle: TextStyle(color: Colors.blue),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30),
            height: 80,
            width: 200,
            child: ElevatedButton(
              child: const Text(
                "Calcular",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                double valorAlcool = double.parse(alcoolController.text);
                double valorGasolina = double.parse(gasolinaController.text);

                double relacao = valorAlcool / valorGasolina;
                setState(() {
                  if (relacao < 7) {
                    _resultado = "Abastecer com Alcool";
                  } else {
                    _resultado = "Abastecer com Gasolina";
                  }
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text(
              _resultado,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
          ),
        ],
      ),
    );
  }
}
