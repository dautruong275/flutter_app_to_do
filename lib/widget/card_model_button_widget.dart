import 'package:flutter/material.dart';

class ModelButton extends StatelessWidget {
  ModelButton({Key? key}) : super(key: key);

  String textValue = ''; // State variable to store the text input
  TextEditingController controller = TextEditingController();
  void _addTask() {
    print(controller.text); // Print the current value of textValue
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
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
                onPressed: _addTask, // Call _addTask when button is pressed
                child: const Text('Add Task'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
