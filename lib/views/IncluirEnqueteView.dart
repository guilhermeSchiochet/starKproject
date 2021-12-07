import 'package:flutter/material.dart';
import 'package:opina_cidadao/utils/ColorUtil.dart';

class incluirEnqueteView extends StatefulWidget {
  const incluirEnqueteView({Key? key}) : super(key: key);

  @override
  _incluirEnqueteViewState createState() => _incluirEnqueteViewState();
}

class _incluirEnqueteViewState extends State<incluirEnqueteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      SizedBox(height: 60),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.chevron_left, color: ColorUtil.COR_01, size: 60),
          Icon(Icons.circle_outlined, color: ColorUtil.COR_01, size: 60),
        ],
      ),
    ]));
  }
}
