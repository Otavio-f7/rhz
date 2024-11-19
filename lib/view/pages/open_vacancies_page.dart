import 'package:flutter/material.dart';
import 'package:rhz/view/widgets/custom_drawer.dart';

class OpenVacanciesPage extends StatefulWidget {
  const OpenVacanciesPage({super.key});

  @override
  State<OpenVacanciesPage> createState() => _OpenVacanciesPageState();
}

class _OpenVacanciesPageState extends State<OpenVacanciesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vagas Abertas'),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const CustomDrawer(),
      body: const Center(child: Text('Open Vacancies Page'),),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        icon: const Icon(Icons.add),
        label: const Text('Novo'),
      ), 
    );
  }
}