import 'package:dilemadobotao/pages/jogar.page.dart';
import 'package:flutter/material.dart';

class PorcentagemPage extends StatefulWidget {
  const PorcentagemPage({Key? key}) : super(key: key);

  @override
  State<PorcentagemPage> createState() => _PorcentagemPage();
}

class _PorcentagemPage extends State<PorcentagemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                const SizedBox(
                  height: 120,
                ),
                SizedBox(
                  child: SizedBox(
                      height: 120,
                      child: Container(
                        child: const Text(
                          "33% das pessoas apertaram o botão.",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          border: Border(
                            top: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //BorderSide
                            bottom: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //BorderSide
                            left: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //Borderside
                            right: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //BorderSide
                          ),
                          color: Colors.red,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  child: SizedBox(
                      height: 120,
                      child: Container(
                        child: const Text(
                          "33% das pessoas não apertaram o botão.",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          border: Border(
                            top: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //BorderSide
                            bottom: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //BorderSide
                            left: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //Borderside
                            right: BorderSide(
                                width: 5,
                                color: Colors.red,
                                style: BorderStyle.solid), //BorderSide
                          ),
                          color: Colors.red,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.red.shade300;
                          }
                          return Colors.red;
                        }),
                        fixedSize:
                            MaterialStateProperty.all(const Size(170, 80)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const JogarPage()));
                      },
                      child: const Text(
                        'Próxima',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ])),
        ));
  }
}
