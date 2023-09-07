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
            desc: 'hello world',
          ),
          CardItem(
            name: 'adidas',
            imageUrl: 'item-2.png',
            desc: 'hello world',
          ),
          CardItem(
            name: 'adidas',
            imageUrl: 'item-3.png',
            desc: 'hello world',
          ),
          CardItem(
            name: 'adidas',
            imageUrl: 'item-4.png',
            desc: 'hello world',
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
