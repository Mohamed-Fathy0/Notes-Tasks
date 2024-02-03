import 'package:flutter/material.dart';
import 'package:notes_and_tasks/view/screens/notes_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme:
            const AppBarTheme(backgroundColor: Color(0xff1E3C7A), elevation: 0),
        scaffoldBackgroundColor: const Color(0xff5B8CFF),
      ),
      home: const NotesScreen(),
    );
  }
}
