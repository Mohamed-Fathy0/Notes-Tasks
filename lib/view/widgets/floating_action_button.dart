import 'package:flutter/material.dart';
import 'package:notes_and_tasks/view/screens/write_note_screen.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const WriteNote(),
            ));
      },
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Delete?'),
        content: const Text('Are you sure you want to delete this item?'),
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('No'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () {
              // Write code to delete item
            },
            child: const Text('Delete'),
          ),
        ],
      );
    },
  );
}
