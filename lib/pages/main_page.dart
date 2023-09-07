import 'package:flutter/material.dart';
import 'package:payment/widget/card_item.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  Widget content() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        children: [
          CardItem(),
          CardItem(),
          CardItem(),
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
