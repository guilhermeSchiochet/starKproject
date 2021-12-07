import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opina_cidadao/utils/ColorUtil.dart';

import 'package:opina_cidadao/views/components/iconButTeste.dart';
import 'package:opina_cidadao/views/components/heater.dart';


class ListaEnqueteView extends StatefulWidget {
  const ListaEnqueteView({Key? key}) : super(key: key);

  @override
  _ListaEnqueteViewState createState() => _ListaEnqueteViewState();
}

class _ListaEnqueteViewState extends State<ListaEnqueteView> {
 
  String situacao = 'PENDENTE';

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.list, color: ColorUtil.COR_01, size: 60),
            Icon(Icons.circle_outlined, color: ColorUtil.COR_01, size: 60),
          ],
        ),
        heater(),
        iconButTeste(),
        
      ]),
    );
  }
}
