import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/modal/items.dart';

class CarBody extends StatelessWidget {
  CarBody({
    Key? key,
    required this.item,
    required this.handleDeleteTask,
    required this.index,
  }) : super(key: key);
  var item;
  final Function handleDeleteTask;
  var index;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: (index % 2 == 0)
                ? const Color.fromARGB(255, 236, 93, 189)
                : const Color.fromARGB(255, 51, 240, 246),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                    fontSize: 20,
                    color: Color(0xff4B4B4B),
                    fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () async {
                  if (await confirm(context)) {
                    handleDeleteTask(item.id);
                  }
                  return;
                },
                child: const Icon(
                  Icons.delete_outline,
                  size: 30,
                  color: Color(0xff4B4B4B),
                ),
              )
            ],
          ),
        ));
  }
}
