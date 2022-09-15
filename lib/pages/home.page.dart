import 'package:calculadora/widgets/historial.widget.dart';
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
  List<String> capturareverse = [];
  String numero = "";
  String operacion = "";
  String resultado = "";
  String operacionCompleta = "";
  String error = "";
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
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            alignment: Alignment.center,
                            child: historial(capturareverse)
                            ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            alignment: Alignment.centerRight,
                            child: Text(operacionCompleta,style: TextStyle(fontSize: 18),)),
                        ],
                      )
                    ],
                  ),
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
                  Column(
                    children: [
                      Text(numero),
                      Text(error),
                    ],
                  ),
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
                        titulo: "7",
                        metodo: () {
                          setState(() {
                            numero+= "7";
                          });
                        }),
                    BotonModel(
                        titulo: "8",
                        metodo: () {
                          setState(() {
                            numero+= "8";
                          });
                        }),
                    BotonModel(
                        titulo: "9",
                        metodo: () {
                          setState(() {
                            numero+= "9";
                          });
                        }),
                    BotonModel(
                        titulo: "÷",
                        metodo: () {
                          setState(() {
                            operacion = "/";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "DEL",
                        metodo: () {
                          setState(() {
                            final pos = numero.length - 1;
                            numero = numero.substring(0,pos);
                          });
                        }),
                    BotonModel(
                        titulo: "C",
                        metodo: () {
                          setState(() {
                            operacion = "";
                            numero = "";
                            operacionCompleta = "";
                          });
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "4",
                        metodo: () {
                          setState(() {
                            numero+= "4";
                          });
                        }),
                    BotonModel(
                        titulo: "5",
                        metodo: () {
                          setState(() {
                            numero+= "5";
                          });
                        }),
                    BotonModel(
                        titulo: "6",
                        metodo: () {
                          setState(() {
                            numero+= "6";
                          });
                        }),
                    BotonModel(
                        titulo: "x",
                        metodo: () {
                          setState(() {
                            operacion = "x";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "(",
                        metodo: () {
                          setState(() {
                            operacion = "(";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        titulo: ")",
                        metodo: () {
                          setState(() {
                            operacion = ")";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "1",
                        metodo: () {
                          setState(() {
                            numero+= "1";
                          });
                        }),
                    BotonModel(
                        titulo: "2",
                        metodo: () {
                          setState(() {
                            numero+= "2";
                          });
                        }),
                    BotonModel(
                        titulo: "3",
                        metodo: () {
                          setState(() {
                            numero+= "3";
                          });
                        }),
                    BotonModel(
                        titulo: "-",
                        metodo: () {
                          setState(() {
                            operacion = "-";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "x^2",
                        metodo: () {
                          setState(() {
                            operacion = "2^(";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "√x",
                        metodo: () {
                          setState(() {
                            operacion = "√(";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                  ]),
                  botonesEnFila([
                    BotonModel(
                        titulo: "0",
                        metodo: () {
                          setState(() {
                            numero+= "0";
                          });
                        }),
                    BotonModel(
                        titulo: "%",
                        metodo: () {
                          setState(() {
                            if(numero!=""){
                              double porcentaje = double.parse(numero)/100;
                              numero = porcentaje.toString();
                              operacionCompleta += numero;
                              numero="";
                            }
                          });
                        }),
                    BotonModel(
                        titulo: ",",
                        metodo: () {
                          setState(() {
                            operacion = ",";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "+",
                        metodo: () {
                          setState(() {
                            operacion = "+";
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            operacionCompleta += operacion;
                            numero = "";
                          });
                        }),
                    BotonModel(
                        titulo: "=",
                        metodo: () {
                          setState(() {
                            if(numero!=""){
                              operacionCompleta += numero;
                            }
                            String resultado = operacionCompleta.replaceAll("x", "*").replaceAll("√", "sqrt");
                            Parser p = Parser();
                            Expression exp = p.parse(resultado);
                            ContextModel cm = ContextModel();
                            double eval = exp.evaluate(EvaluationType.REAL, cm);
                            resultado = eval.toString();
                            operacionCompleta += "=" + resultado;
                            captura.add(operacionCompleta);
                            capturareverse = captura.reversed.toList();
                            operacionCompleta="";
                            numero = "";
                            operacion = "";
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
