import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconImagePath;
  final String iconTitle;
  final String iconSubTitle;
  const MyListTile({Key? key, required this.iconImagePath, required this.iconTitle, required this.iconSubTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
                children: [
                  Container(
                    height: 90,
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 40,
                          spreadRadius: 10,
                          color: Colors.grey.shade400,
                        )
                      ]
                    ),
                    child: Image.asset(iconImagePath),
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(iconTitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20, ),),
                      SizedBox(height: 8.0,),
                      Text(iconSubTitle,style: TextStyle(color: Colors.grey[600]),),
                    ],
                  ),
                ],
              ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
