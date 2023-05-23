import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:trip_jateng/beranda/awal.dart';
import 'package:trip_jateng/model.dart';


class View extends StatefulWidget {
  const View({super.key,});

  @override
  State<View> createState() => _ViewState();
  
}
 int _currentIndex = 0;
  void _updateIndex(int value) {
    (() {
      _currentIndex = value;
    });
  }
class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Views dan Deskripsi'),
      ),
      body: ImageSlideshow(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Image.asset('assets/sewu.jpg',
            fit: BoxFit.cover,),
            
          ),
           Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Image.asset('assets/sewu.jpg',
            fit: BoxFit.cover,),
            
          ),
           Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Image.asset('assets/sewu.jpg',
            fit: BoxFit.cover,),
            
          ),
         
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => View()));
              }),
              child: Icon(Icons.favorite)),
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
