import 'package:flutter/material.dart';
import 'package:trip_jateng/model.dart';
import 'package:trip_jateng/repository.dart';
import 'package:trip_jateng/tampilan%20view/tampilan.dart';

class ListGunung extends StatefulWidget {
  const ListGunung({super.key});

  @override
  State<ListGunung> createState() => _ListGunungState();
}

class _ListGunungState extends State<ListGunung> {
  List<Blog> listBlog = [];
  Repository repository = Repository();

  getData() async {
    listBlog = await repository.getData();
    setState(() {});
  }

  @override
  void initState() {
    getData();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Wisata Gunung'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(10.0),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 8.0),
              itemCount: listBlog.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                tampilan()));
                  },
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Hero(
                            tag: listBlog[index].id,
                            child: Image.network(
                              listBlog[index].gambar,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.all(5)),
                        Text(
                          listBlog[index].judul,
                          style: const TextStyle(fontSize: 15.0),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
