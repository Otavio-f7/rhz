import 'package:flutter/material.dart';
import 'package:rhz/view/widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          'Início', 
          style: TextStyle(
            fontFamily: 'JetBrainsMono', 
            fontWeight: FontWeight.bold,
            color: Colors.white),
          ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Home Page')
      ),
    );
  }
}