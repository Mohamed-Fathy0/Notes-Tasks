import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_and_tasks/view/screens/notes_screen.dart';
import 'package:notes_and_tasks/viewmodel/cubit/note_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Color(0xff1E3C7A), elevation: 0),
          scaffoldBackgroundColor: const Color(0xff5B8CFF),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: Color(0xff1E3C7A), iconSize: 50),
        ),
        home: const NotesScreen(),
      ),
    );
  }
}
