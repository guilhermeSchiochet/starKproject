import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:opina_cidadao/utils/ColorUtil.dart';

class heater extends StatelessWidget {
  const heater({Key? key}) : super(key: key);

  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Column(

      

 crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
       
       
        SizedBox(height: 20),
        Text(
         "Opina cidadão!",
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w700,
           color: ColorUtil.COR_02,
           height: 1.5 ,
           ),
         ),
    
 Text(
          "Participe de enquetes sobre os serciços públicos da sua cidade",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: ColorUtil.COR_02,
            height: 2.5 ,
          ),
        ),
           
      ],
           
    );
  }
}
