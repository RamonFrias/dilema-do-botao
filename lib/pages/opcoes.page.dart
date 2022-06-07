import 'package:dilemadobotao/pages/inicial.page.dart';
import 'package:flutter/material.dart';

class OpcoesPage extends StatefulWidget {
  const OpcoesPage({Key? key}) : super(key: key);

  @override
  State<OpcoesPage> createState() => _OpcoesPageState();
}

class _OpcoesPageState extends State<OpcoesPage> {
  bool checkValue = true;
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
              style: TextStyle(fontSize: 50),
            ),
            activeColor: Colors.red,
            value: checkValue,
            onChanged: (bool? value) {
              setState(() {
                if (checkValue == true) {
                  checkValue = false;
                } else {
                  checkValue = true;
                }
              });
            },
          ),
          CheckboxListTile(
            title: const Text(
              "Música",
              style: TextStyle(fontSize: 50),
            ),
            activeColor: Colors.red,
            value: checkValue,
            onChanged: (bool? value) {
              setState(() {
                if (checkValue == true) {
                  checkValue = false;
                } else {
                  checkValue = true;
                }
              });
            },
          ),
          CheckboxListTile(
            title: const Text(
              "Vibração",
              style: TextStyle(fontSize: 50),
            ),
            activeColor: Colors.red,
            value: checkValue,
            onChanged: (bool? value) {
              setState(() {
                if (checkValue == true) {
                  checkValue = false;
                } else {
                  checkValue = true;
                }
              });
            },
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
