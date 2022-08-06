import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({Key? key,
    required this.balance,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
    this.color}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.0),
        ),
        width: 300,
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 20.0,),
            const Text('Balance'),
            // const SizedBox(height: 10.0,),
             Text('\$' + balance.toString(),style: TextStyle(fontSize: 36, color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 30.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                //cardnumber
                Text(cardNumber.toString(),
                  style: TextStyle(color: Colors.white,),),
                //expiry
                Text(expiryMonth.toString() + "/" + expiryYear.toString(),
                  style: TextStyle(color: Colors.white,),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
