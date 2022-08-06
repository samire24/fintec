import 'dart:ui';
import 'package:flutter/material.dart';

enum CardBrand {visa, mastercard}

class CreditCard{
  int id;
  String cardHolder, securityCode, number;
  CardBrand brand;
  double amount;
  List<Color> colors;

  CreditCard({
    required this.id,
    required this.cardHolder,
    required this.securityCode,
    required this.number,
    required this.brand,
    required this.amount,
    required this.colors,
  });
}

List<CreditCard> cards = [
  CreditCard(
    id: 1,
    cardHolder: "Samire24",
    securityCode: "0546 554",
    number: "1234 5678 7656 8765",
    brand: CardBrand.visa,
    amount: 665534.78,
    colors: [
      Color(0xff0000ff),
      Color(0xff377cff),
    ],
  ),
  CreditCard(
    id: 2,
    cardHolder: "Samire24",
    securityCode: "0546 554",
    number: "1234 5678 7656 8765",
    brand: CardBrand.mastercard,
    amount: 4534.78,
    colors: [
      Color(0xffffa351),
      Color(0xfff83d34),
    ],
  ),
  CreditCard(
    id: 3,
    cardHolder: "Samire24",
    securityCode: "0546 554",
    number: "1234 5678 7656 8765",
    brand: CardBrand.mastercard,
    amount: 98934.78,
    colors: [
      Color(0xff990099),
      Color(0xff660066),
    ],
  ),
];
