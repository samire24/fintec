import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconImagePath;
  final String buttonText;

  const MyButton({Key? key,required this.iconImagePath, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icons
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(16),
            boxShadow: [BoxShadow(
                blurRadius: 10,
                spreadRadius: 2,
                color: Colors.grey.shade600
            )] ,),

          child: Center(
            child: Image.asset(iconImagePath),
          ),
        ),
        SizedBox(height: 20,),
        Text(buttonText,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.grey[700],
          ),
        )
      ],
    );
  }
}
