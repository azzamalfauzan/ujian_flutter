import 'package:flutter/material.dart';

class Daftarpage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Ringkasan'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Data Siswa',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          ListView(
            shrinkWrap: true,
            children: [
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Nama Siswa 1'),
                subtitle: Text('Informasi Siswa 1'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Nama Siswa 2'),
                subtitle: Text('Informasi Siswa 2'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Nama Siswa 3'),
                subtitle: Text('Informasi Siswa 3'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Homepage'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/form');
                },
                child: Text('Formulir'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
}