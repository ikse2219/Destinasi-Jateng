import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:trip_jateng/view.dart';


class Best extends StatelessWidget {
  String best;

  Best({
    super.key,
    required this.best,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => View()));
            }),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Image.network(
                'https://th.bing.com/th/id/OIP.KodOYKM_Polxh2Xm7EeJ6gHaE7?pid=ImgDet&rs=1',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => View()));
            }),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Image.network(
                'https://img-cdn.brainberries.co/wp-content/uploads/2020/05/Candi-Borobudur-03-1536x1024.jpg',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          ),
          InkWell(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => View()));
            }),
            child: Padding(
              padding: EdgeInsets.only(bottom: 10.0),
              child: Image.network(
                'https://1.bp.blogspot.com/-VXrRAjOrrgQ/XGvkGBD0YWI/AAAAAAAACyo/75Kcs1Awq_46oMsdg2LO7ajLe5T5WjiSwCLcBGAs/s640/Masjid-Agung-Semarang-1.jpg',
                width: 75,
                height: 75,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
