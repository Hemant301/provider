import 'package:flutter/material.dart';

class NotifiLisnor extends StatelessWidget {
  NotifiLisnor({super.key});
  final ValueNotifier<int> _count = ValueNotifier<int>(0);
  ValueNotifier<bool> toggal = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Notifier page")),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ValueListenableBuilder(
                valueListenable: toggal,
                builder: ((context, value, child) {
                  return TextFormField(
                    obscureText: toggal.value,
                    decoration: InputDecoration(
                        hintText: "password",
                        suffix: InkWell(
                            onTap: () {
                              print(toggal.value);
                              toggal.value = !toggal.value;
                            },
                            child: toggal.value == false
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off))),
                  );
                })),
            ValueListenableBuilder(
                valueListenable: _count,
                builder: ((context, value, child) {
                  return Center(child: Text(_count.value.toString()));
                }))
          ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _count.value++;
          print(_count.value);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
