import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Box extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 24,
            child: Row(
              children: <Widget> [
                Padding(
                  padding: const EdgeInsets.only(),
                  child: Text(
                    'Mau Kemana', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold
                    ),
                  ),
                ),
               
              ],
            ),
          )

        ],
      ),
    );
  }
}