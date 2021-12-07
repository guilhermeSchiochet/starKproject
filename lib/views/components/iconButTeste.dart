import 'package:flutter/material.dart';
import 'package:opina_cidadao/utils/ColorUtil.dart';
import 'package:opina_cidadao/views/IncluirEnqueteView.dart';

class iconButTeste extends StatefulWidget {
  const iconButTeste({Key? key}) : super(key: key);

  @override
  _iconButTesteState createState() => _iconButTesteState();
}

class _iconButTesteState extends State<iconButTeste> {
  int etapaAtual = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 980,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(ColorUtil.COR_01),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                  padding: MaterialStateProperty.all(EdgeInsets.all(40))),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(
                        builder: (context) => incluirEnqueteView()))
                    .then((value) => setState(() {}));
              },
              child: Text(this.etapaAtual == 3
                      ? 'Finalizar Solicitação'
                      : 'Avançar'),

                      
            ),
          ),
        ),
      ),
    );
  }
}
