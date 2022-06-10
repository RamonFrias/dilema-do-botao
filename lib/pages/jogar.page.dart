import 'dart:math';
import 'package:dilemadobotao/pages/porcentagem.page.dart';
import 'package:flutter/material.dart';

List<String> lista = [
  "Ter 10 milhões, mas você não pode gastar esse dinheiro com você mesmo.",
  "Voce pode ficar invisivel, mas so quando ninguem estiver olhando.",
  "Voce pode viajar no tempo, mas so uma vez.",
  "Seu chuveiro vai estar sempre na temperatura perfeita, mas voce precisa entrar numa banheira de gelo uma vez por mes.",
  "Voce pode morar na casa dos seus sonhos, mas a privada vai entupir sempre que for usada.",
  "Você recebe 140 mil por mês, mas terá que trabalhar 20 horas por dia.",
  "Tudo será gratuito apenas para você, exceto para produtos eletrônicos, que serão mais caros.",
  "Você pode se tornar imortal, mas você só pode comer wasabi pelo resto de sua vida."
];

final _random = Random();

class JogarPage extends StatefulWidget {
  const JogarPage({Key? key}) : super(key: key);

  @override
  State<JogarPage> createState() => _JogarPageState();
}

class _JogarPageState extends State<JogarPage> {
  var textoAleatorio = lista[_random.nextInt(lista.length)];
  String msg = 'Ala o troxa';
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
                        child: Text(
                          textoAleatorio,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
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
                        ),
                      )),
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(
                  child: ElevatedButton(
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const CircleBorder(side: BorderSide.none)),
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color?>((states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Colors.red.shade300;
                          }
                          return Colors.red;
                        }),
                        fixedSize:
                            MaterialStateProperty.all(const Size(200, 150)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PorcentagemPage(0)));
                      },
                      child: const Text(
                        '',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                const SizedBox(
                  height: 60,
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
                            MaterialStateProperty.all(const Size(150, 70)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PorcentagemPage(1)));
                      },
                      child: const Text(
                        'Recusar',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
              ],
            ),
          ),
        ));
  }

  String retornaFrase(List<String> lista) {
    return lista.first;
  }
}
