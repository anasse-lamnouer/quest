import 'package:flutter/material.dart';
import 'package:traveaux/show.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'liset des produits',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Liste de produits simulée
    final List<Map<String, dynamic>> products = [
      {
        "id": 1,
        "name": "Produit A",
        "price": 20.0,
        "image": "assets/Gakuseisean-Aire-Images.256.png"
      },
      {
        "id": 2,
        "name": "Produit B",
        "price": 30.0,
        "image": "assets/Hopstarter-Soft-Scraps-My-Pictures.256.png"
      },
      {
        "id": 3,
        "name": "Produit C",
        "price": 25.0,
        "image": "assets/Robsonbillponte-Happy-Holidays-Pictures.512.png"
      },
      {
        "id": 4,
        "name": "Produit D",
        "price": 40.0,
        "image": "assets/Treetog-Junior-Folder-blue-pictures.256.png"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Action à effectuer
              print("anasse");
            },
          ),
          
          //ajouter button de nitification et user
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {},
              ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        centerTitle: true,
      ),
      //navbarr dans la bas de qui copose page home et profile et shop et settinge
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //backgroundColor: Colors.blueGrey,
        selectedItemColor: Theme.of(context).colorScheme.inversePrimary,
        //selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        //unselectedItemColor: Colors.blueGrey,
        //currentIndex: _currentIndex,
        items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Shop',
                ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: 'Setting',
                  ),
                  ],
                  ),
      ///
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Nombre de colonnes
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            elevation: 4,
            child: Column(
              children: [
                Image.network(
                  product['image'],
                  height: 200,
                  width: 200,
                  //width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        product['name'],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text("\$${product['price']}",
                          style: TextStyle(color: Colors.green, fontSize: 14)),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ShowPage(product: product),
                            ),
                          );
                        },
                        child: Text("Voir"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}