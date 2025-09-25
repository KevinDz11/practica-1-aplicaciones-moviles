// Archivo: lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/ui_data.dart';
import 'pages/textfields_page.dart';
import 'pages/buttons_page.dart';
import 'pages/selection_page.dart';
import 'pages/lists_page.dart';
import 'pages/info_page.dart';

void main() {
  runApp(
    // 1. Proveemos el UiData a todo el arbol de widgets
    ChangeNotifierProvider(
      create: (context) => UiData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Showcase',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // 2. Lista de nuestras "páginas" (fragments)
  static const List<Widget> _pages = <Widget>[
    TextFieldsPage(),
    ButtonsPage(),
    SelectionPage(),
    ListsPage(),
    InfoPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Elements en Flutter'),
      ),
      // 3. El cuerpo de la app cambia según el ítem seleccionado
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'TextField'),
          BottomNavigationBarItem(icon: Icon(Icons.touch_app), label: 'Botones'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box), label: 'Selección'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Listas'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey, // Importante para ver los items no seleccionados
        onTap: _onItemTapped,
        showUnselectedLabels: true, // Muestra los labels de los no seleccionados
      ),
    );
  }
}