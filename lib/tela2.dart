import 'package:flutter/material.dart';

class minhaTela2 extends StatefulWidget {
  final String usuarioNome;
  const minhaTela2({required this.usuarioNome, super.key});

  @override
  State<minhaTela2> createState() => _tela2State();
}

class _tela2State extends State<minhaTela2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App 1",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Color.fromARGB(255, 37, 136, 123),
        foregroundColor: Colors.white,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Bem Vindo ${widget.usuarioNome}!"),
        ],
      )),
    );
  }
}
