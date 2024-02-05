import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:notes_and_tasks/model/models.dart';
import 'package:notes_and_tasks/viewmodel/data.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  addNote(title, note) {
    if (title == null) {
      title = "No Title";
    } else if (note == null) {
      note = "";
    } else if (title == null && note == null) {
      return null;
    } else {
      notes.add(NoteModel(title: title, note: note));
    }
  }

  TextEditingController controllerTitle = TextEditingController();
  TextEditingController controllerNote = TextEditingController();
}
