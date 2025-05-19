import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/question_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PQRS App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const QuestionListScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/questions': (context) => const QuestionListScreen(),
      },
    );
  }
}