import 'package:flutter/material.dart';
import 'package:learnprovider/provider/colorchangeprovider.dart';
import 'package:provider/provider.dart';

class ChangeColors extends StatelessWidget {
  ChangeColors({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ColorChangeProvider>(context, listen: false);
    print("build for");
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            width: 300,
            child: Column(
              children: [
                Consumer<ColorChangeProvider>(
                    builder: (context, valuess, child) {
                  print("building is start FOR SLIDER");
                  return Slider(
                      value: valuess.value,
                      onChanged: (val) {
                        valuess.setop(val);
                      });
                }),
                Consumer<ColorChangeProvider>(
                  builder: (context, valuess, child) {
                    print("building is start FOR CONTAINER");
                    return Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(valuess.value),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(valuess.value),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
          Column(
            children: [Text("FDTGFB")],
          )
        ],
      ),
    );
  }
}
