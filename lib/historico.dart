import 'package:dadosrpg/Dates.dart';
import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  List<Dates> listaDados;

  Historico(this.listaDados, {Key? key}) : super(key: key);

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  List<String> titulo = [];
  List<String> subtitulo = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Histórico"),
        backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
      ),
      backgroundColor: const Color.fromRGBO(46, 46, 46, 1),
      body: ListView.builder(
        itemCount: widget.listaDados.length,
        itemBuilder: (context, index) {
          widget.listaDados.forEach((element) {
            titulo.add(element.daDos);
            subtitulo.add(element.valorTotal);
          });
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color.fromRGBO(30, 30, 30, 1),
              borderOnForeground: true,
              shadowColor: Colors.white,
              elevation: 2,
              child: ListTile(
                title: Text(subtitulo[index]),
                subtitle: Text(titulo[index]),
                textColor: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
