import 'package:dilemadobotao/pages/inicial.page.dart';
import 'package:flutter/material.dart';

class OpcoesPage extends StatefulWidget {
  const OpcoesPage({Key? key}) : super(key: key);

  @override
  State<OpcoesPage> createState() => _OpcoesPageState();
}

class _OpcoesPageState extends State<OpcoesPage> {
  bool checkValueSom = true;
  bool checkValueMusica = true;
  bool checkValueVibracao = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[
          const SizedBox(
            height: 120,
          ),
          CheckboxListTile(
            title: const Text(
              "Som",
              style: TextStyle(fontSize: 45),
            ),
            activeColor: Colors.red,
            value: checkValueSom,
            onChanged: (bool? value) {
              setState(() {
                if (checkValueSom == true) {
                  checkValueSom = false;
                } else {
                  checkValueSom = true;
                }
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CheckboxListTile(
            title: const Text(
              "Música",
              style: TextStyle(fontSize: 45),
            ),
            activeColor: Colors.red,
            value: checkValueMusica,
            onChanged: (bool? value) {
              setState(() {
                if (checkValueMusica == true) {
                  checkValueMusica = false;
                } else {
                  checkValueMusica = true;
                }
              });
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CheckboxListTile(
            title: const Text(
              "Vibração",
              style: TextStyle(fontSize: 45),
            ),
            activeColor: Colors.red,
            value: checkValueVibracao,
            onChanged: (bool? value) {
              setState(() {
                if (checkValueVibracao == true) {
                  checkValueVibracao = false;
                } else {
                  checkValueVibracao = true;
                }
              });
            },
          ),
          const SizedBox(
            height: 60,
          ),
          ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
              ),
              backgroundColor:
                  MaterialStateProperty.resolveWith<Color?>((states) {
                if (states.contains(MaterialState.pressed)) {
                  return Colors.red.shade300;
                }
                return Colors.red;
              }),
              fixedSize: MaterialStateProperty.all(const Size(150, 70)),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaginaInicial()));
            },
            child: const Text(
              "Voltar",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ]));
  }
}
