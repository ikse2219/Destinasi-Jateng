import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trip_jateng/ui/widget/contoh_box_kategori.dart';

class Trip extends StatefulWidget {
  const Trip({super.key});

  @override
  State<Trip> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Trip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trip-Jateng"),
      ),
      body: Column(
        children: <Widget>[
          ContohBoxKategori(judul:"Judul 1"),
          ContohBoxKategori(judul:"Judul 2"),
          ContohBoxKategori(judul:"Judul 3"),
          ContohBoxKategori(judul:"Judul 4"),
          ContohBoxKategori(judul:"Judul 5"),
        ],
      ),
    );
  }
}