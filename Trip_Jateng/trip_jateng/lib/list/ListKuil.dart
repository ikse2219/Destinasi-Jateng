import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListKuil extends StatelessWidget {
  const ListKuil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' List Wisata Kuil'),
      ),
      body: ListView(
        children: <Widget>[
          InkWell(
            child: ListTile(
              leading: Image(image: AssetImage('assets/kuil.png')),
              title: Text('Pantai Semarang'),
            ),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Xjoyo'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Pekalongan'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Pemalang'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Pantai Batang'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Sriwilangi'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Kemari'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Sriwilangi'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Sriwilangi'),
          ),
          ListTile(
            leading: Image(image: AssetImage('assets/kuil.png')),
            title: Text('Pantai Sriwilangi'),
          ),
        ],
      ),
    );
  }
}


