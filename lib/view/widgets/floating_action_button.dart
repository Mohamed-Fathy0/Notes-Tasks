import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_and_tasks/view/screens/write_note_screen.dart';
import 'package:notes_and_tasks/viewmodel/cubit/note_cubit.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        final myCubit = BlocProvider.of<NoteCubit>(context);

        return FloatingActionButton(
          onPressed: () {
            myCubit.addNote(myCubit.controllerTitle, myCubit.controllerNote);
            print("object");
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
      },
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
