import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:trip_jateng/beranda/contact.dart';
import 'package:trip_jateng/beranda/tentang.dart';
import 'package:trip_jateng/beranda/trip.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(accountName: Text('', style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold),
            ),
             accountEmail: Text('',
             style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/nih.jpeg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/sewu.jpg'),
                fit: BoxFit.cover),

              ),
              ),
              ListTile(
                leading: const Icon(Icons.phone),
                title: const Text('Kontak'),
                onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Contact())));
                },
              ),
              ListTile(
                leading: const Icon(Icons.info_outlined),
                title: const Text('Tentang Kami'),
                onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Tentang())));
                },
              ),
             
        ],
      ),
    );
  }
}