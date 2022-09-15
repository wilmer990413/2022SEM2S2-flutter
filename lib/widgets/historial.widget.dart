import 'package:flutter/widgets.dart';

Widget historial(List<String> lista) {
  List<Widget> listaText = [];
  for(int i = 0; i < lista.length; i++){
    if(i==0||i==1 || i==2){
      listaText.add(Text("${lista[i]}",style: TextStyle(fontSize: 18),));
    }
  }
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: listaText.reversed.toList(),
  );
}