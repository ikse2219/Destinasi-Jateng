import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class BoxAwal extends StatelessWidget {
  String judul;

  BoxAwal({
    super.key,
    required this.judul,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ImageSlideshow(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Image.asset(
              'assets/sewu.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Image.network(
              'https://th.bing.com/th/id/OIP.RvrKE1Qfwoh5l0-fjEbN7AHaE6?pid=ImgDet&rs=1',
              fit: BoxFit.cover,
            ),
          ),
           Container(
            width: double.infinity,
            height: 200,
            color: Colors.blueGrey,
            child: Image.network(
              'https://www.viitormedia.com/wp-content/uploads/2021/08/gunung-merbabu-r-1024x772.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
