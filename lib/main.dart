import 'package:flutter/material.dart';
import 'package:to_do_app/modal/items.dart';
import 'package:to_do_app/widget/card_body_widget.dart';
import 'package:to_do_app/widget/card_model_button_widget.dart';

void main(List<String> args) {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<DataItems> items = [
    DataItems(id: "1", name: "Task 1"),
    DataItems(id: "2", name: "Task 2"),
    DataItems(id: "3", name: "Task 3"),
    DataItems(id: "4", name: "Task 4")
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'ToDoList',
            style: TextStyle(fontSize: 40),
          ),
          backgroundColor: const Color.fromARGB(255, 47, 131, 228),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: items.map((item) => CarBody(item: item)).toList(),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: Colors.grey[200],
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20))),
              isScrollControlled: true,
              context: context,
              builder: (BuildContext context) {
                return ModelButton();
              },
            );
          },
          child: const Icon(
            Icons.add,
            size: 40,
          ),
        ));
  }
}
