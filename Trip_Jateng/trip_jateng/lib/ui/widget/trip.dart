import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trip_jateng/ui/widget/best.dart';
import 'package:trip_jateng/ui/widget/bottomNav.dart';
import 'package:trip_jateng/ui/widget/box_kategori.dart';
import 'package:trip_jateng/ui/widget/awal.dart';
import 'package:flutter/cupertino.dart';

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
      body: Column(
        children: <Widget>[
          BoxAwal(judul: ""),
          SizedBox(
            height: 50,
          ),
          BoxKategori(box: ""),
          SizedBox(
            height: 75,
          ),
          Best(best: "")
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
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Cari',
          ),
        ],
      ),
    );
  }
}
