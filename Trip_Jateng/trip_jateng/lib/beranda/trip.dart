import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trip_jateng/beranda/sidebar.dart';
import 'package:trip_jateng/cari/cari.dart';
import 'package:trip_jateng/beranda/best.dart';
import 'package:trip_jateng/beranda/category.dart';
import 'package:trip_jateng/beranda/awal.dart';
import 'package:flutter/cupertino.dart';
import 'package:trip_jateng/list/ListPantai.dart';
import 'package:trip_jateng/text/text2.dart';

import 'package:trip_jateng/text/text.dart';

class Trip extends StatefulWidget {
  const Trip({super.key});

  @override
  State<Trip> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Trip> {
  int _currentIndex = 0;
  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideBar(),
      appBar: AppBar(),
      body: Column(
        children: <Widget>[
          BoxAwal(judul: ""),
          SizedBox(
            height: 15,
          ),
          Box(),
          SizedBox(
            height: 15,
          ),
          BoxKategori(box: ""),
          SizedBox(
            height: 40,
          ),
          Fav(),
          SizedBox(
            height: 15,
          ),
          Best(best: ""),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        mouseCursor: SystemMouseCursors.grab,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 13,
        selectedIconTheme: IconThemeData(color: Colors.white, size: 40),
        selectedLabelStyle: TextStyle(),
        unselectedFontSize: 13,
        iconSize: 30,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: (() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Coba()));
                }),
                child: Icon(Icons.favorite)),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: (() {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cari()));
                }),
                child: Icon(Icons.search)),
            label: 'Cari',
          ),
        ],
      ),
    );
  }
}
