import 'package:flutter/material.dart';
import '../models/boton.model.dart';

Widget botonesEnFila(List<BotonModel> lista) {
  List<Widget> listaBotones = [];
  lista.forEach((e) => {
        listaBotones.add(ElevatedButton(
            onPressed: e.metodo,
            child: Text(
              e.titulo,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ))),
      });
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: listaBotones,
  );
}
