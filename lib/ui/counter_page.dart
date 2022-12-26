import 'dart:async';
import 'dart:developer';

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
    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   counterProviders.setcount();
    // });
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
          // Center(child: Consumer<counterProvider>(
          //   builder: (context, value, child) {
          //     log("building is start 1");
          //     return Text(
          //       value.count.toString(),
          //       style: TextStyle(fontSize: 50),
          //     );
          //   },
          // )),
          Center(
              child: Selector<counterProvider, int>(
            shouldRebuild: (previous, next) {
              if (next < 2) {
                return false;
              } else {
                return true;
              }
            },
            selector: (_, counterProvider) => counterProvider.count,
            builder: (context, value, child) {
              log("building is start 1");
              return Text(
                value.toString(),
                style: TextStyle(fontSize: 50),
              );
            },
          )),
          Center(child: Consumer<counterProvider>(
            builder: (context, value, child) {
              log("building is start 2");
              return Text(
                value.c.toString(),
                style: TextStyle(fontSize: 50),
              );
            },
          )),
          TextButton(
              onPressed: (() {
                counterProviders.setValue();
              }),
              child: Center(child: Text("inc2"))),
          TextButton(
              onPressed: (() {
                counterProviders.setcount();
              }),
              child: Center(child: Text("inc 1")))
        ],
      ),
    );
  }
}
