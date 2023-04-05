import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContohBoxKategori extends StatelessWidget {
  String judul;

  ContohBoxKategori({
    super.key,
    required this.judul,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: 70,
            height: 70,
            color: Colors.blueGrey,
          ),
          Text(judul),
        ],
      ),
    );
  }
}