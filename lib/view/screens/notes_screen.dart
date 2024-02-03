import 'package:flutter/material.dart';
import 'package:notes_and_tasks/view/widgets/container_note.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView(
        clipBehavior: Clip.none,
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: const [
          ContainerNote(
            title: 'one title',
          ),
          ContainerNote(
            title: 'two',
          ),
        ],
      ),
    );
  }
}
