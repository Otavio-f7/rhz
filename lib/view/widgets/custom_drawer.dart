import 'package:flutter/material.dart';
import 'package:rhz/view/widgets/custom_list_tile.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
              // margin: EdgeInsets.only(bottom: 1.0),
              child: Text(
                'Recursos Humanos',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'JetBrainsMono', 
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
            CustomListTile(
              leading: const Icon(Icons.home, color: Colors.white,), 
              title: 'Inicio', 
              onTap: (){
                Navigator.of(context).pushNamed('/');
              }, 
              selected: ModalRoute.of(context)?.settings.name == '/',
            ),
            CustomListTile(
              leading: const Icon(Icons.bookmark, color: Colors.white,), 
              title: 'Vagas Abertas', 
              onTap: (){
                Navigator.of(context).pushNamed('/open_vacancies');
              }, 
              selected: ModalRoute.of(context)?.settings.name == '/open_vacancies',
            ),
            CustomListTile(
              leading: const Icon(Icons.wifi_protected_setup_sharp, color: Colors.white,), 
              title: 'Processos Em andamento', 
              onTap: (){
                Navigator.of(context).pushNamed('/progress_vacancies_page');
              }, 
              selected: ModalRoute.of(context)?.settings.name == '/progress_vacancies_page',
            ),
            CustomListTile(
              leading: const Icon(Icons.group, color: Colors.white,), 
              title: 'Base de candidatos', 
              onTap: (){}, 
              selected: false
            ),
            CustomListTile(
              leading: const Icon(Icons.settings, color: Colors.white,), 
              title: 'Configurações', 
              onTap: (){}, 
              selected: false
            ),
          ],
        ),
    );
  }
}

