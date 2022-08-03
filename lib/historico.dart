import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  const Historico({Key? key}) : super(key: key);

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Histórico"),
        backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
      ),
      backgroundColor: const Color.fromRGBO(46, 46, 46, 1),
    );
  }
}
