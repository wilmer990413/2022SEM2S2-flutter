import 'package:function_tree/function_tree.dart';
import 'package:calculadora/models/boton.model.dart';
import 'package:calculadora/widgets/botonesEnFila.widget.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> captura = [];
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
                        titulo: "(",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "(";
                          });
                          print(resultadosTexto);
                        }),
                    BotonModel(
                        titulo: ")",
                        metodo: () {
                          setState(() {
                            resultadosTexto += ")";
                          });
                        }),
                    BotonModel(
                        titulo: "C",
                        metodo: () {
                          setState(() {
                            resultadosTexto = "";
                          });
                        }),
                    BotonModel(
                        titulo: "DEL",
                        metodo: () {
                          setState(() {
                            final pos = resultadosTexto.length - 1;
                            resultadosTexto = resultadosTexto.substring(0,pos);
                          });
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "%",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "%";
                          });
                        }),
                    BotonModel(
                        titulo: "x^2",
                        metodo: () {
                          print("x^2");
                        }),
                    BotonModel(
                        titulo: "√x",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "√(";
                          });
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
                        titulo: "x",
                        metodo: () {
                          setState(() {
                            resultadosTexto += "x";
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
                          setState(() {
                            String resultado = resultadosTexto.replaceAll("x", "*").replaceAll("√", "sqrt");
                            Parser p = Parser();
                            Expression exp = p.parse(resultado);
                            ContextModel cm = ContextModel();
                            double eval = exp.evaluate(EvaluationType.REAL, cm);
                            resultado = eval.toString();
                            captura.add(resultado);
                          });
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
