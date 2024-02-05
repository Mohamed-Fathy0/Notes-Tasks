// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:notes_and_tasks/model/models.dart';
import 'package:notes_and_tasks/view/screens/write_note_screen.dart';
import 'package:notes_and_tasks/viewmodel/cubit/note_cubit.dart';

// ignore: must_be_immutable
class ContainerNote extends StatelessWidget {
  int i = 0;
  final NoteModel noteModel;

  ContainerNote({
    super.key,
    required this.i,
    required this.noteModel,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double containerWidth = (width - 30) / 2; // Adjusted width calculation

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WriteNote(),
              ));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
          height: 200,
          width: containerWidth,
          child: BlocBuilder<NoteCubit, NoteState>(
            bloc: NoteCubit(),
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      noteModel.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16, // Adjust font size if needed
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        noteModel.note!,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
