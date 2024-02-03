import 'package:flutter/material.dart';
import 'package:notes_and_tasks/view/widgets/container_note.dart';
import 'package:notes_and_tasks/viewmodel/data.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: notes.length,
        itemBuilder: (context, index) => const ContainerNote(),
      ),
    );
  }
}
