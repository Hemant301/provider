import 'package:flutter/material.dart';
import 'package:learnprovider/provider/favprovider.dart';
import 'package:learnprovider/ui/addfav.dart';
import 'package:learnprovider/ui/counter_page.dart';
import 'package:provider/provider.dart';

class Favescreen extends StatelessWidget {
  const Favescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favProvider = Provider.of<FavProvider>(context, listen: false);
    print("home");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favescreen"),
        actions: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Faveaddscreen()));
              },
              child: Icon(Icons.favorite))
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: ((context, index) {
                return ListTile(
                    onTap: () {
                      favProvider.setSlectedIndex(index);
                    },
                    title: Text("item " + "$index"),
                    trailing:
                        Consumer<FavProvider>(builder: (context, value, child) {
                      return Icon(value.slectedIndex.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined);
                    }));
              })),
        )
      ]),
    );
  }
}
