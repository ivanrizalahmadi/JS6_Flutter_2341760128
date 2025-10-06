import 'package:flutter/material.dart';
import '../models/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Item> items = [
      Item(
        name: 'Garam',
        image: 'assets/images/garam.jpg',
        price: 5000,
        stock: 25,
        rating: 4.5,
      ),
      Item(
        name: 'Gula',
        image: 'assets/images/gula.jpg',
        price: 12000,
        stock: 30,
        rating: 4.8,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplikasi Belanja'),
        backgroundColor: const Color.fromARGB(255, 22, 150, 0),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final item = items[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/item', arguments: item);
                  },
                  child: Card(
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Hero(
                          tag: item.name,
                          child: Image.asset(
                            item.image,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          item.name,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Rp ${item.price}'),
                        Text('Stok: ${item.stock}'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 16),
                            Text('${item.rating}'),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 0, 114, 103),
            padding: const EdgeInsets.all(8),
            child: const Text(
              'Ivan Rizal | NIM: 2341760128',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
