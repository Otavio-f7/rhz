import 'package:flutter/material.dart';
import 'package:rhz/view/widgets/custom_drawer.dart';

class ProgressVacanciesPage extends StatefulWidget {
  const ProgressVacanciesPage({super.key});

  @override
  State<ProgressVacanciesPage> createState() => _ProgressVacanciesPageState();
}

class _ProgressVacanciesPageState extends State<ProgressVacanciesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Processos em Andamento'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const CustomDrawer(),
      body: const Center(child: Text('Progress Vacancies Page'),),
    );
  }
}