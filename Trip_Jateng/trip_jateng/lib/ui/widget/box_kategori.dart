import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BoxKategori extends StatelessWidget {
  String box;

  BoxKategori({
    super.key,
    required this.box,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:[
          Image.network('https://img.lovepik.com/free-png/20210924/lovepik-scenic-beach-icon-free-vector-illustration-png-image_401299663_wh1200.png',
          width: 75,
          height: 75,
          fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          Image.network('https://cdn.pixabay.com/photo/2018/05/21/22/44/logo-3419889_960_720.png',
          width: 75,
          height: 75,
          fit: BoxFit.cover,
          ),
           Padding(
            padding: EdgeInsets.only(bottom: 20.0),
          ),
          Image.network('https://i.pinimg.com/736x/14/cc/d3/14ccd3903d93d3e40c63313f7a28f946.jpg',
          width: 75,
          height: 75,
          fit: BoxFit.cover,
          ),

          
        ],
      ),
    );
  }
}