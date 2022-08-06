import 'package:flutter/material.dart';

class Transaction{
  String title, category;
  IconData icon;
  MaterialColor color;
  double value;

  Transaction({
    required this.title,
    required this.category,
    required this.icon,
    required this.color,
    required this.value,
});
}

List<Transaction> transactions = [
  Transaction(
      title: "Transfer into",
      category: "Evya",
      icon: Icons.send,
      color: Colors.pink,
      value: 2000),
  Transaction(
      title: "Nke",
      category: "Shoes",
      icon: Icons.shopping_basket,
      color: Colors.amber,
      value: -145.60),
  Transaction(
      title: "Apple Music",
      category: "Entertainment",
      icon: Icons.music_note,
      color: Colors.deepPurple,
      value: -34.44),
  Transaction(
      title: "FastFood",
      category: "Food",
      icon: Icons.fastfood,
      color: Colors.indigo,
      value: 20),
  Transaction(
      title: "Transfer into",
      category: "Eva",
      icon: Icons.send,
      color: Colors.pink,
      value: 20000),
  Transaction(
      title: "FastFood",
      category: "Food",
      icon: Icons.fastfood,
      color: Colors.purple,
      value: 670),
  Transaction(
      title: "Transfer inot",
      category: "Evya",
      icon: Icons.receipt,
      color: Colors.pink,
      value: 2000),
];