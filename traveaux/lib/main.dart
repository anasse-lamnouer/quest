import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            },
            ),
        title: const Text('Flutter Demo Home Page'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              },
              ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              },
              ),
              IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              },
              ),
              ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/Gakuseisean-Aire-Images.256.png',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 8), // Espace entre l'image et le texte
                const Text(
                  'Image 1',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/Treetog-Junior-Folder-blue-pictures.256.png',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Image 2',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/Robsonbillponte-Happy-Holidays-Pictures.512.png',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Image 3',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/Hopstarter-Soft-Scraps-My-Pictures.256.png',
                  fit: BoxFit.contain,
                ),
                const SizedBox(height: 8),
                const Text(
                  'Image 4',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
