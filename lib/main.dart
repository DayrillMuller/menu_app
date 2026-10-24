import 'package:flutter/material.dart';

import 'menu_card.dart';
import 'menu_item.dart';

void main() => runApp(const MenuApp());

const menuItems = [
  MenuItem(
    name: 'Cappuccino',
    description: 'Espresso topped with silky steamed milk and foam.',
    price: '\$4.50',
    image: 'assets/cappuccino.jpg',
  ),
  MenuItem(
    name: 'Croissant',
    description: 'Buttery, flaky, and freshly baked every morning.',
    price: '\$3.00',
    image: 'assets/croissant.jpg',
  ),
  MenuItem(
    name: 'Latte',
    description:
        'Smooth espresso blended with warm milk and a light layer of foam.',
    price: '\$4.75',
    image: 'assets/latte.jpg',
  ),
  MenuItem(
    name: 'Chocolate Muffin',
    description: 'Moist chocolate sponge with rich melted chocolate chips.',
    price: '\$3.50',
    image: 'assets/chocolate_muffin.jpg',
  ),
];

class MenuApp extends StatelessWidget {
  const MenuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.brown),
      home: Scaffold(
        appBar: AppBar(title: const Text('Coffee Menu')),
        body: ListView(
          padding: const EdgeInsets.symmetric(vertical: 8),
          children: [for (final item in menuItems) MenuCard(item: item)],
        ),
      ),
    );
  }
}
