// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_and_tasks/viewmodel/cubit/note_cubit.dart';

class WriteNote extends StatelessWidget {
  const WriteNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // TextEditingController controllerTitle = TextEditingController();
    // TextEditingController controllerNote = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<NoteCubit, NoteState>(
        builder: (context, state) {
          final controllerCubit = BlocProvider.of<NoteCubit>(context);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                child: CustomTextField(
                  controller: controllerCubit.controllerTitle,
                  icon: Icons.title,
                  text: 'Title',
                  isBorder: true,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 10, 8, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        border: Border.all(color: Colors.purple),
                        borderRadius: BorderRadius.circular(10)),
                    child: CustomTextField(
                      controller: controllerCubit.controllerNote,
                      icon: Icons.note,
                      text: 'Note',
                      isBorder: false,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.icon,
    required this.text,
    required this.isBorder,
  });

  final TextEditingController controller;
  final IconData icon;
  final String text;
  final bool isBorder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(fontSize: 24, color: Colors.blueGrey[900]),
      cursorColor: Colors.orange,
      cursorHeight: 30,
      minLines: null, // إلغاء الحد الأدنى لارتفاع السطر
      maxLines: null,
      controller: controller,
      decoration: InputDecoration(
        prefixText: "",
        suffixIconConstraints: const BoxConstraints(
          maxWidth: 30, // تحديد الحد الأقصى للعرض
          maxHeight: 30, // تحديد الحد الأقصى للارتفاع
        ),
        contentPadding: const EdgeInsets.all(10),
        hintText: text,
        hintStyle: TextStyle(color: Colors.brown[800], fontSize: 21),
        filled: true,
        disabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple)),
        border: isBorder
            ? const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))
            : const UnderlineInputBorder(borderSide: BorderSide.none),
        fillColor: Colors.lightBlueAccent,
        prefixIcon: Icon(icon),
        enabled: true,
        suffix: isBorder
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  controller.clear();
                },
              )
            : null,
      ),
    );
  }
}
