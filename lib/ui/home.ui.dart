import 'package:flutter/material.dart';
import 'package:probabilidades_brasileirao/ui/serie_a.ui.dart';
import 'package:probabilidades_brasileirao/ui/serie_b.ui.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  int _selectedPage = 0;

  static const List<Widget> _pages = <Widget>[
    SerieaUI(),
    SeriebUI(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Probabilidades do Futebol'),
      ),
      body: Center(
        child: _pages.elementAt(_selectedPage),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer, color: Colors.green),
            label: 'Série A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer, color: Colors.greenAccent),
            label: 'Série B',
          ),
        ],
        currentIndex: _selectedPage,
        //selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
