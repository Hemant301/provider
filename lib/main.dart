import 'package:flutter/material.dart';
import 'package:learnprovider/provider/colorchangeprovider.dart';
import 'package:learnprovider/provider/counterprovider.dart';
import 'package:learnprovider/provider/favprovider.dart';
import 'package:learnprovider/provider/themeprovide.dart';
import 'package:learnprovider/ui/notifilisnarScreen.dart';
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
      child: Builder(builder: (BuildContext context) {
        final themprov = Provider.of<themeProvider>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(brightness: Brightness.dark),
          home: NotifiLisnor(),
        );
      }),
    );
  }
}
