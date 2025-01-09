import 'package:flutter/material.dart';

class ModelButton extends StatelessWidget {
  ModelButton({
    Key? key,
    required this.addTask,
  }) : super(key: key);

  final Function addTask;

  TextEditingController controller = TextEditingController();
  void _handleOnclick(BuildContext context) {
    final name = controller.text;
    if (name.isEmpty) {
      return;
    }
    addTask(name); // Print the current value of textValue

    Navigator.pop(context);
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
                onPressed: () => _handleOnclick(
                    context), // Call _addTask when button is pressed
                child: const Text('Add Task'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
