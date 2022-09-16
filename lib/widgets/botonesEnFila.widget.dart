import 'package:flutter/material.dart';
import '../models/boton.model.dart';

Widget botonesEnFila(List<BotonModel> lista) {
  List<Widget> listaBotones = [];
  lista.forEach((e) => {
        if (e.icon != "")
          {
            listaBotones.add(Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: e.metodo,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(68, 107, 107, 107),
                        minimumSize: const Size(50, 50),
                        maximumSize: const Size(200, 50),
                      ),
                      child: Icon(e.icon == "backspace"
                          ? Icons.backspace
                          : Icons.superscript),
                    ),
                  ],
                ))),
          }
        else
          {
            listaBotones.add(Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ElevatedButton(
                        onPressed: e.metodo,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: e.titulo == "="
                              ? Color.fromARGB(131, 129, 248, 49)
                              : Color.fromARGB(68, 107, 107, 107),
                          minimumSize: e.titulo == "="
                              ? const Size(90, 50)
                              : const Size(50, 50),
                          maximumSize: const Size(200, 50),
                        ),
                        child: Text(
                          e.titulo,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )),
                  ],
                ))),
          }
      });
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: listaBotones,
    ),
  );
}
