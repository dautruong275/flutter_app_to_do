import 'package:flutter/material.dart';
import 'package:to_do_app/widget/card_body_widget.dart';

void main(List<String> args) {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
        body: const SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              CarBody(),
              CarBody(),
            ],
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
                return Padding(
                    padding: MediaQuery.of(context).viewInsets,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Your task',
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Add Task'),
                            ),
                          ),
                        ],
                      ),
                    ));
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
