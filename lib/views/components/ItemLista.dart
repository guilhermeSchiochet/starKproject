import 'package:flutter/material.dart';
import 'package:opina_cidadao/utils/ColorUtil.dart';
import 'package:opina_cidadao/views/components/ItemMenuSituacao.dart';

class ItemLista extends StatefulWidget {
  

final Function onSelecionaItemMenu;

const ItemLista({ 
    Key? key,
    required this.onSelecionaItemMenu,
  }) : super(key: key);
  @override

  _ItemListaState createState() => _ItemListaState();
}

class _ItemListaState extends State<ItemLista> {
 
bool pendentes = true;
  bool resolvidos = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: ColorUtil.COR_05,
      ),
      child: Row(
        children: [
          ItemMenuSituacao(
            titulo: 'Pendentes', 
            ativo: this.pendentes,
            onPressed: () {
              setState(() {
                this.widget.onSelecionaItemMenu('PENDENTE');
                this.pendentes = true;
                this.resolvidos = false;
              });
            },
          ),
          ItemMenuSituacao(
            titulo: 'Resolvidos', 
            ativo: this.resolvidos,
            onPressed: () {
              setState(() {
                this.widget.onSelecionaItemMenu('RESOLVIDO');
                this.pendentes = false;
                this.resolvidos = true;
              });
            },
          )
        ],
      ),      
    );
  }
}