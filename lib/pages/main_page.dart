import 'package:flutter/material.dart';
import 'package:payment/widget/card_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget content() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          CardItem(
            name: 'adidas',
            imageUrl: 'item-1.png',
            price: 200,
          ),
          CardItem(
            name: 'adidas',
            imageUrl: 'item-2.png',
            price: 200,
          ),
          CardItem(
            name: 'adidas',
            imageUrl: 'item-3.png',
            price: 200,
          ),
          CardItem(
            name: 'adidas',
            imageUrl: 'item-4.png',
            price: 200,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [content()],
      ),
    );
  }
}
