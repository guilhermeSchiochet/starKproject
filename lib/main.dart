
import 'package:flutter/material.dart';
import 'package:opina_cidadao/views/ListaEnquenteView.dart';

void main() {
  runApp(AppOpinacidadao());
}

class AppOpinacidadao extends StatelessWidget {
  const AppOpinacidadao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Opidadao',
      theme: ThemeData(
        fontFamily: 'inter'
        ),
    home: ListaEnqueteView(),
    );
  }
}


