import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SendPage extends StatelessWidget {
  const SendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Page', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('My SendPage'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Go Back")
            ),
          ],
        ),
      ),
    );
  }
}

class PayPage extends StatelessWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pay Page', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('My PayPage'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Go Back")
            ),
          ],
        ),
      ),
    );
  }
}


class BillPage extends StatelessWidget {
  const BillPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bill Page', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Column(
          children: [
            Text('My BillPage'),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            },
                child: Text("Go Back")
            ),
          ],
        ),
      ),
    );
  }
}

