import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:trip_jateng/model.dart';

class Repository{
  final _baseUrl = 'https://643e10766c30feced81f184f.mockapi.io/pantai';
  
  Future getData() async{
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if(response.statusCode == 200) {
        print(response.body);
        Iterable it = jsonDecode(response.body);
        
        List<Blog> blog = it.map((e) => Blog.fromJson(e)).toList();
        print("tes");
        return blog;
      }

    } catch (e) {
      print("exception di repository - "+e.toString());
    }
  }
}