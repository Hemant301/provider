import 'package:flutter/material.dart';
import 'package:learnprovider/provider/colorchangeprovider.dart';
import 'package:learnprovider/provider/counterprovider.dart';
import 'package:learnprovider/provider/favprovider.dart';
import 'package:learnprovider/provider/themeprovide.dart';
import 'package:learnprovider/ui/colorchange.dart';
import 'package:learnprovider/ui/counter_page.dart';
import 'package:learnprovider/ui/fav.dart';
import 'package:learnprovider/ui/theamchange.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => counterProvider()),
        ChangeNotifierProvider(create: (_) => ColorChangeProvider()),
        ChangeNotifierProvider(create: (_) => FavProvider()),
        ChangeNotifierProvider(create: (_) => themeProvider()),
      ],

      // create: (_) => counterProvider(),
      child: Builder(
        builder: (BuildContext context ) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
          
              primarySwatch: Colors.blue,
            ),
            home: ThemChange(),
          );
        }
      ),
    );
  }
}
