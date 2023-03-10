import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/themeprovide.dart';

class ThemChange extends StatelessWidget {
  const ThemChange({super.key});

  @override
  Widget build(BuildContext context) {
    final themprov = Provider.of<themeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Change"),
      ),
      body: Column(children: [
        RadioListTile<ThemeMode>(
          groupValue: themprov.themeMode,
          value: ThemeMode.dark,
          onChanged: themprov.setThemeMode,
          title: const Text("Dark Mode"),
        ),
        RadioListTile<ThemeMode>(
          groupValue: themprov.themeMode,
          value: ThemeMode.light,
          onChanged: themprov.setThemeMode,
          title: const Text("light Mode"),
        ),
        RadioListTile<ThemeMode>(
          groupValue: themprov.themeMode,
          value: ThemeMode.system,
          onChanged: themprov.setThemeMode,
          title: const Text("System Mode"),
        ),
      ]),
    );
  }
}
