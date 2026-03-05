import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[800],
          leading: Icon(Icons.home),
          title: Text('Aplikasi Pertamaku'),
        ), // AppBar
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(children: [Icon(Icons.archive), Text("Artikel Baru")]),
                Card(
                  child: Column(
                    children: [
                      Image.network(
                        'https://cdn.pixabay.com/photo/2014/10/07/13/48/mountain-477832_1280.jpg',
                      ), // Image.network
                      Text("Judul Artikel Baru"),
                    ],
                  ), // Column
                ), // Card
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      'Komentar',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ), // TextStyle
                    ), // Text
                  ],
                ), // Row
                ListView(
                  shrinkWrap: true,
                  children: [
                    Card(
                      child: Padding(
                        padding: EdgeInsets.all(3),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("John Doe"),
                            Text('Lorem ipsum dolor sit amet.'),
                          ],
                        ), // Column
                      ), // Padding
                    ), // Card
                    // Catatan untuk Langkah 13:
                    // Di tutorial diminta membuat 5 komentar.
                    // Anda bisa menduplikat/copy-paste blok "Card(" komentar di atas sebanyak 4 kali lagi di sini.
                  ],
                ), // ListView
              ],
            ), // Column
          ), // Container
        ), // SingleChildScrollView
      ), // Scaffold
    ); // MaterialApp
  }
}
