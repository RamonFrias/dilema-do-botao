import 'package:flutter/material.dart';

class PaginaPorcentagem extends StatefulWidget {
  const PaginaPorcentagem({Key? key}) : super(key: key);

  @override
  State<PaginaPorcentagem> createState() => _PaginaPorcentagem();
}

class _PaginaPorcentagem extends State<PaginaPorcentagem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: const <Widget>[
        SizedBox(
          height: 120,
        ),
        Text(
          "Ola",
          style: TextStyle(fontSize: 40),
        )
      ]),
    );
  }
}
