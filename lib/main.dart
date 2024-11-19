import 'package:flutter/material.dart';
import 'package:rhz/view/pages/open_vacancies_page.dart';
import 'package:rhz/view/pages/progress_vacancies_page.dart';

import 'view/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HR-Z',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal, secondary: Colors.blueGrey.shade300),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context)=> const HomePage(),
        '/open_vacancies' : (context)=> const OpenVacanciesPage(),
        '/progress_vacancies_page' : (context)=> const ProgressVacanciesPage(),
        
      },
    );
  }
}


