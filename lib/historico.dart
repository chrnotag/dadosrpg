import 'package:dadosrpg/Dates.dart';
import 'package:flutter/material.dart';

class Historico extends StatefulWidget {
  List<Dates> listaDados;

  Historico(this.listaDados, {Key? key}) : super(key: key);

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
      body: ListView.builder(
        itemCount: widget.listaDados.length,
        itemBuilder: (context, index) {
          Dates data = widget.listaDados[index];
          widget.listaDados.forEach((element) {
          });
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color.fromRGBO(30, 30, 30, 1),
              borderOnForeground: true,
              shadowColor: Colors.red,
              elevation: 2,
              child: ListTile(
                title: Text(data.valorTotal),
                subtitle: Text(data.daDos),
                textColor: Colors.white,
              ),
            ),
          );
        },
      ),
    );
  }
}
