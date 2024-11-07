import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
   @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _infoController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();

  void _showNotification() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Data berhasil ditambahkan')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Data',
          style: TextStyle(
            color: Colors.white,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _infoController,
              decoration: InputDecoration(labelText: 'Informasi'),
            ),
            TextField(
              controller: _noteController,
              decoration: InputDecoration(labelText: 'Catatan'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showNotification();
              },
              child: Text('Simpan'),
            ),
            SizedBox(height: 10),
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
                    Navigator.pushNamed(context, '/daftar');
                  },
                  child: Text('Ringkasan'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}