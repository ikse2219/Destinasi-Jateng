import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trip_jateng/list/ListKuil.dart';
import 'package:trip_jateng/list/ListMount.dart';
import 'package:trip_jateng/beranda/best.dart';
import 'package:trip_jateng/list/listPantai.dart';

class BoxKategori extends StatelessWidget {
  String box;

  BoxKategori({
    super.key,
    required this.box,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Coba()));
              }),
              child: Image.asset(
                'assets/pantai.jpg',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListMount()));
              }),
              child: Image.asset(
                'assets/gunung.jpg',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
            InkWell(
              onTap: (() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ListKuil()));
              }),
              child: Image.asset(
                'assets/kuil.png',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
