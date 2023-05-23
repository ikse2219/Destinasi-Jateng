import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trip_jateng/beranda/awal.dart';
import 'package:trip_jateng/view.dart';


class Cari extends StatelessWidget {
  const Cari({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' List Wisata Gunung'),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => View()));
            }),
            child: ListTile(
              leading: Image(image: AssetImage('assets/gunung.jpg')),
              title: Text('Pantai Semarang'),
            ),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Xjoyo'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Pekalongan'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Pemalang'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Pantai Batang'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Sriwilangi'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Kemari'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Sriwilangi'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Sriwilangi'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/gunung.jpg')),
            title: Text('Pantai Sriwilangi'),
          ),
        ],
      ),
    );
  }
}
