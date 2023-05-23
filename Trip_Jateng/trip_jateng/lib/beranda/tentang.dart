import 'package:flutter/material.dart';

class Tentang extends StatelessWidget {
  const Tentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                  child: Image.asset('assets/patung.png',
                      width: 200, height: 200)),
              const Text(
                'Destinasi Wisata Jateng',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              const Text(
                'Aplikasi Destinasi Wisata ini untuk mempermudah dalam pencarian wisata yang ada di Jawa Tengah dan menampilkan view dan latarbelakang wisata ',
                textAlign: TextAlign.center,
              ),
              const Padding(padding: EdgeInsets.only(bottom: 10)),
              const Text(
                'Hilling-Slur',
                style: TextStyle(fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}