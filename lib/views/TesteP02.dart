import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:opina_cidadao/utils/ColorUtil.dart';
import 'components/IndidadorDeEtapa.dart';

class TesteP02 extends StatefulWidget {
  const TesteP02({Key? key}) : super(key: key);

  @override
  _TesteP02 createState() => _TesteP02();
}

class _TesteP02 extends State<TesteP02> {
  int etapaAtual = 1;

  double? latitude;
  double? longitude;
  Uint8List? imagem;
  String? descricao;

  get child => null;

  String getTituloEtapa() {
    switch (etapaAtual) {
      case 1:
        return ' teste01';

      case 2:
        return 'teste02';

      case 3:
        return 'teste02';
    }
    return '';
  }

  Future<void> processaInclusao() async {
    // ignore: unused_local_variable
    FormData formData = FormData.fromMap({
      "descricao": this.descricao,
      "latitude": this.latitude,
      "longitude": this.longitude,
      "imagem": await MultipartFile.fromBytes(List.from(this.imagem!),
          filename: 'imagem.jpg')
    });
  }
   @override
    Widget build(BuildContext context) {
      return Scaffold(
          backgroundColor: ColorUtil.COR_06,
          body: Container(
              child: Stack(
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 40),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(),
                                onPressed: () {
                                  if (this.etapaAtual > 1) {
                                    setState(() {
                                      this.etapaAtual--;
                                    });
                                  } else {
                                    Navigator.of(context).pop();
                                  }
                                },
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: ColorUtil.COR_05,
                                  size: 32,
                                ),
                              ),
                              Icon(
                                Icons.person_outline,
                                color: ColorUtil.COR_04,
                                size: 26,
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(
                            this.getTituloEtapa(),
                            style: TextStyle(
                              color: ColorUtil.COR_02,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'Passo ${this.etapaAtual}/3',
                            style: TextStyle(
                              color: ColorUtil.COR_03,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                    IndicadorEtapa(
                      totalEtapas: 3,
                      etapaAtual: this.etapaAtual,
                    ),
                    
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: FractionallySizedBox(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(ColorUtil.COR_01),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                        padding: MaterialStateProperty.all(EdgeInsets.all(15))),
                    onPressed: () {
                      setState(() {
                        if (this.etapaAtual <= 2) {
                          this.etapaAtual++;
                        } else {
                          // processamento da inclusão
                          this.processaInclusao();
                        }
                      });
                    },
                    child: Text(this.etapaAtual == 3
                        ? 'Finalizar Solicitação'
                        : 'Avançar'),
                  ),
                )),
              )
            ],
          )));
    }
  }

