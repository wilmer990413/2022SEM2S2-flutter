import 'package:function_tree/function_tree.dart';
import 'package:calculadora/models/boton.model.dart';
import 'package:calculadora/widgets/botonesEnFila.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<num> captura = [];
  String resultadosTexto = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black12,
              child: Row(
                children: [
                  Text("${captura}"),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blueGrey,
              child: Row(
                children: [
                  Text(resultadosTexto),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: const Color.fromARGB(255, 9, 67, 115),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  botonesEnFila([
                    BotonModel(
                        titulo: "%",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "%";
                          });
                          print(resultadosTexto);
                        }),
                    BotonModel(
                        titulo: "CE",
                        metodo: () {
                          print("CE");
                        }),
                    BotonModel(
                        titulo: "C",
                        metodo: () {
                          print("C");
                        }),
                    BotonModel(
                        titulo: "DEL",
                        metodo: () {
                          print("DEL");
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "1/x",
                        metodo: () {
                          print("1/x");
                        }),
                    BotonModel(
                        titulo: "x^2",
                        metodo: () {
                          print("x^2");
                        }),
                    BotonModel(
                        titulo: "√x",
                        metodo: () {
                          print("√x");
                        }),
                    BotonModel(
                        titulo: "÷",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "/";
                          });
                          print("÷");
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "7",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "7";
                          });
                          print("7");
                        }),
                    BotonModel(
                        titulo: "8",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "8";
                          });
                          print("8");
                        }),
                    BotonModel(
                        titulo: "9",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "9";
                          });
                          print("9");
                        }),
                    BotonModel(
                        titulo: "X",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "X";
                          });
                          print("X");
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "4",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "4";
                          });
                          print("4");
                        }),
                    BotonModel(
                        titulo: "5",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "5";
                          });
                          print("5");
                        }),
                    BotonModel(
                        titulo: "6",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "6";
                          });
                          print("6");
                        }),
                    BotonModel(
                        titulo: "-",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "-";
                          });
                          print("-");
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "1",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "1";
                          });
                          print("1");
                        }),
                    BotonModel(
                        titulo: "2",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "2";
                          });
                          print("2");
                        }),
                    BotonModel(
                        titulo: "3",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "3";
                          });
                          print("3");
                        }),
                    BotonModel(
                        titulo: "+",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "+";
                          });
                          print("+");
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "+/-",
                        metodo: () {
                          print("+/-");
                        }),
                    BotonModel(
                        titulo: "0",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "0";
                          });
                          print("0");
                        }),
                    BotonModel(
                        titulo: ",",
                        metodo: () {
                          setState(() {
                            resultadosTexto += ",";
                          });
                          print(",");
                        }),
                    BotonModel(
                        titulo: "=",
                        metodo: () {
                          captura.add(resultadosTexto.interpret());
                          print(captura);
                        }),
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
