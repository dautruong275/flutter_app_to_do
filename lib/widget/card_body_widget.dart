import 'package:flutter/material.dart';
import 'package:to_do_app/modal/items.dart';

class CarBody extends StatelessWidget {
  CarBody({
    Key? key,
    required this.item,
  }) : super(key: key);
  var item;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 70,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            color: const Color(0xffDFDFDF),
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
              const Icon(
                Icons.delete_outline,
                size: 30,
                color: Color(0xff4B4B4B),
              )
            ],
          ),
        ));
  }
}
