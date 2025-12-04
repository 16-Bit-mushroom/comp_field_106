import 'package:flutter/material.dart';
import 'package:comp_field/views/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(), // note: HomeScreen now a pure screen
    );
  }
}


import 'package:flutter/material.dart';
// Import the newly created file
import 'todo_app.dart';

void main() {
  runApp(const MyExamApp());
}

class MyExamApp extends StatelessWidget {
  const MyExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stateful Lab Exam',
      theme: ThemeData(
        // Setting a primary swatch for better default coloring
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      // Set the home screen to the TodoApp widget
      home: const TodoApp(),
    );
  }
}
