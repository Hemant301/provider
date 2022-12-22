import 'dart:async';

import 'package:flutter/material.dart';
import 'package:learnprovider/provider/counterprovider.dart';

import 'package:provider/provider.dart';

import '../provider/counterprovider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  void initState() {
    final counterProviders =
        Provider.of<counterProvider>(context, listen: false);
    Timer.periodic(Duration(seconds: 1), (timer) {
      counterProviders.setcount();
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final counterProviders =
        Provider.of<counterProvider>(context, listen: false);
    print("build");
    return Scaffold(
      appBar: AppBar(title: Text("Counter page")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Consumer<counterProvider>(
            builder: (context, value, child) {
              print("building is start");
              return Text(
                value.count.toString(),
                style: TextStyle(fontSize: 50),
              );
            },
          )),
          TextButton(
              onPressed: (() {
                counterProviders.setcount();
              }),
              child: Center(child: Text("inc")))
        ],
      ),
    );
  }
}
