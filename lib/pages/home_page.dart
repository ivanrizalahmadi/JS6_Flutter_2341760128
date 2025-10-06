import 'package:flutter/material.dart';
import '../models/item.dart';

final List<Item> items = [
  Item(name: 'Gula', price: 5000),
  Item(name: 'Garam', price: 2000),
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 244, 245), 
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 49, 49, 222),
        elevation: 0,
        title: const Text(
          'Shopping List',
          style: TextStyle(
            color: Color.fromARGB(221, 250, 250, 250),
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                items[index].name,
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text('Rp ${items[index].price}'),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/item',
                  arguments: items[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
