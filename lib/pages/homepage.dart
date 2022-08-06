import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walet/pages/send_page.dart';
import 'package:walet/utility/my_button.dart';
import 'package:walet/utility/my_cards.dart';
import 'package:walet/utility/my_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.pink,
        child: Icon(Icons.monetization_on,size: 32,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.home, size: 32,color: Colors.pink[200],)),
              IconButton(onPressed: (){}, icon: Icon(Icons.settings,size: 32,color: Colors.grey,)),
            ],
          ),
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          // appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text("My",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                      ),),

                    Text("Cards",
                      style: TextStyle(
                        fontSize: 28,
                      ),),
                  ],
                ),
                //plus button
                Container(
                  padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.add)),
              ],
            ),
          ),
          SizedBox(height: 25,),
          //cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
              children: [
                MyCard(balance: 543.45,cardNumber: 1234567,expiryMonth: 10,expiryYear: 24,color: Colors.deepPurple[400],),
                MyCard(balance: 543.45,cardNumber: 1234567,expiryMonth: 10,expiryYear: 24,color: Colors.green[400],),
                MyCard(balance: 543.45,cardNumber: 1234567,expiryMonth: 10,expiryYear: 24,color: Colors.deepOrange[400],),
              ],
            ),
          ),
          SizedBox(height: 25,),
          SmoothPageIndicator(controller: _controller, count: 3,effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),),
          SizedBox(height: 25,),
          //buttons
          //3 buttons -> send + pay + bills
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    child: MyButton(iconImagePath: 'lib/icons/send-money.png', buttonText: "Send",),
                onTap: (){
                      Navigator.of(context).pushNamed('/second');
                },
                ),
                GestureDetector(
                    child: MyButton(iconImagePath: 'lib/icons/credit-card.png', buttonText: "Pay"),
                onTap: (){
                Navigator.of(context).pushNamed('/third');
                },
                ),
                GestureDetector(
                    child: MyButton(iconImagePath: 'lib/icons/bill.png', buttonText: "Bills"),
                onTap:(){
                  Navigator.of(context).pushNamed('/fourth');
                } ,

                ),
              ],
          ),
           ),
          const SizedBox(height: 30,),
          //column -> stats + transactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: const [
                MyListTile(iconImagePath: 'lib/icons/statistics.png',
                    iconTitle: 'Statistics',
                    iconSubTitle: 'Payment and Income'),
                MyListTile(iconImagePath: 'lib/icons/cash-flow.png',
                    iconTitle: 'Transactions',
                    iconSubTitle: 'Transactions History'),
              ],
            ),
          )
        ],
      )),

    );
  }
}
