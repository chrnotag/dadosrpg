import 'dart:math';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:dadosrpg/historico.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DadosRpg(),
  ));
}

class DadosRpg extends StatefulWidget {
  const DadosRpg({Key? key}) : super(key: key);
  @override
  State<DadosRpg> createState() => _DadosRpgState();
}

class _DadosRpgState extends State<DadosRpg> {
  int _aRolar = 1;
  int _Debuff = 0;
  @override
  Widget build(BuildContext context) {
    final largura = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(46, 46, 46, 1),
      appBar: AppBar(
        title: const Text("Dados RPG"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Historico(),
                ),
              );
            },
            icon: Icon(Icons.history),
          ),
        ],
        backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _valorDado("d4", _aRolar, _Debuff);
                    },
                    child: Column(
                      children: [
                        Container(
                          constraints:
                              const BoxConstraints(maxWidth: 100, minWidth: 50),
                          child: Image.asset(
                            "images/d4.png",
                            width: largura * 0.2,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "D4",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontFamily: 'marcellus'),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _valorDado("d6", _aRolar, _Debuff);
                    },
                    child: Column(
                      children: [
                        Container(
                          constraints:
                              const BoxConstraints(maxWidth: 100, minWidth: 50),
                          child: Image.asset(
                            "images/d6.png",
                            width: largura * 0.2,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "D6",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontFamily: 'marcellus'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _valorDado("d8", _aRolar, _Debuff);
                    },
                    child: Column(
                      children: [
                        Container(
                          constraints:
                              const BoxConstraints(maxWidth: 100, minWidth: 50),
                          child: Image.asset(
                            "images/d8.png",
                            width: largura * 0.2,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "D8",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontFamily: 'marcellus'),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _valorDado("d10", _aRolar, _Debuff);
                    },
                    child: Column(
                      children: [
                        Container(
                          constraints:
                              const BoxConstraints(maxWidth: 100, minWidth: 50),
                          child: Image.asset(
                            "images/d10.png",
                            width: largura * 0.2,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "D10",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontFamily: 'marcellus'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      _valorDado("d12", _aRolar, _Debuff);
                    },
                    child: Column(
                      children: [
                        Container(
                          constraints:
                              const BoxConstraints(maxWidth: 100, minWidth: 50),
                          child: Image.asset(
                            "images/d12.png",
                            width: largura * 0.2,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "D12",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontFamily: 'marcellus'),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _valorDado("d20", _aRolar, _Debuff);
                    },
                    child: Column(
                      children: [
                        Container(
                          constraints:
                              const BoxConstraints(maxWidth: 100, minWidth: 50),
                          child: Image.asset(
                            "images/d20.png",
                            width: largura * 0.2,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "D20",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.red,
                              fontFamily: 'marcellus'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                _valorDado("d100", _aRolar, _Debuff);
              },
              child: Column(
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 100, minWidth: 50),
                    child: Image.asset(
                      "images/d100.png",
                      width: largura * 0.2,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "D100",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontFamily: 'marcellus'),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    const Text(
                      "Adicionar Dados",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _aRolar++;
                              });
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                  maxWidth: 30, minWidth: 20),
                              child: Image.asset(
                                "images/mais.png",
                                width: largura * 0.05,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Text(
                              _aRolar.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (_aRolar <= 1) {
                                } else {
                                  _aRolar--;
                                }
                              });
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                  maxWidth: 30, minWidth: 20),
                              child: Image.asset(
                                "images/menos.png",
                                width: largura * 0.05,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    const AutoSizeText(
                      "Bônus ou Debuff",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      maxLines: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _Debuff++;
                              });
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                  maxWidth: 30, minWidth: 20),
                              child: Image.asset(
                                "images/mais.png",
                                width: largura * 0.05,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 16, left: 16),
                            child: Text(
                              _Debuff.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _Debuff--;
                              });
                            },
                            child: Container(
                              constraints: const BoxConstraints(
                                  maxWidth: 30, minWidth: 20),
                              child: Image.asset(
                                "images/menos.png",
                                width: largura * 0.05,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _valorDado(String dado, int qtdDado, int Buff) {
    String dadosRolados = "";
    int valorTotal = 0;

    switch (dado) {
      case "d4":
        for (int i = 0; i < qtdDado; i++) {
          int valorDado = Random().nextInt(4) + 1;
          dadosRolados = "$dadosRolados , ${valorDado.toString()}";
          valorTotal = valorTotal + valorDado;
        }
        dadosRolados.trim();
        _showDialog((valorTotal + Buff).toString(),
            dadosRolados.replaceFirst(RegExp(r','), ""));
        break;

      case "d6":
        for (int i = 0; i < qtdDado; i++) {
          int valorDado = Random().nextInt(6) + 1;
          dadosRolados = "$dadosRolados , ${valorDado.toString()}";
          valorTotal = valorTotal + valorDado;
        }
        dadosRolados.trim();
        _showDialog((valorTotal + Buff).toString(),
            dadosRolados.replaceFirst(RegExp(r','), ""));
        break;

      case "d8":
        for (int i = 0; i < qtdDado; i++) {
          int valorDado = Random().nextInt(8) + 1;
          dadosRolados = "$dadosRolados , ${valorDado.toString()}";
          valorTotal = valorTotal + valorDado;
        }
        dadosRolados.trim();
        _showDialog((valorTotal + Buff).toString(),
            dadosRolados.replaceFirst(RegExp(r','), ""));
        break;

      case "d10":
        for (int i = 0; i < qtdDado; i++) {
          int valorDado = Random().nextInt(10) + 1;
          dadosRolados = "$dadosRolados , ${valorDado.toString()}";
          valorTotal = valorTotal + valorDado;
        }
        dadosRolados.trim();
        _showDialog((valorTotal + Buff).toString(),
            dadosRolados.replaceFirst(RegExp(r','), ""));
        break;

      case "d12":
        for (int i = 0; i < qtdDado; i++) {
          int valorDado = Random().nextInt(12) + 1;
          dadosRolados = "$dadosRolados , ${valorDado.toString()}";
          valorTotal = valorTotal + valorDado;
        }
        dadosRolados.trim();
        _showDialog((valorTotal + Buff).toString(),
            dadosRolados.replaceFirst(RegExp(r','), ""));
        break;

      case "d20":
        for (int i = 0; i < qtdDado; i++) {
          int valorDado = Random().nextInt(20) + 1;
          dadosRolados = "$dadosRolados , ${valorDado.toString()}";
          valorTotal = valorTotal + valorDado;
        }
        dadosRolados.trim();
        _showDialog((valorTotal + Buff).toString(),
            dadosRolados.replaceFirst(RegExp(r','), ""));
        break;

      case "d100":
        for (int i = 0; i < qtdDado; i++) {
          int valorDado = Random().nextInt(100) + 1;
          dadosRolados = "$dadosRolados , ${valorDado.toString()}";
          valorTotal = valorTotal + valorDado;
        }
        dadosRolados.trim();
        _showDialog((valorTotal + Buff).toString(),
            dadosRolados.replaceFirst(RegExp(r','), ""));
        break;
    }
  }

  void _showDialog(String valor, String cadeiaDados) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.grey.shade900,
          title: const Text(
            "Resultado:",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  valor,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  cadeiaDados,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  salvarDados(String dadosRolados, String valorTotal) {}
}
