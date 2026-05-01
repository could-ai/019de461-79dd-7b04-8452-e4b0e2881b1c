import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'editor_screen.dart';
import 'preview_screen.dart';
import 'settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    ChatScreen(),
    EditorScreen(),
    PreviewScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width >= 600;

    return Scaffold(
      body: Row(
        children: [
          if (isDesktop)
            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              labelType: NavigationRailLabelType.all,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.chat_bubble_outline),
                  selectedIcon: Icon(Icons.chat_bubble),
                  label: Text('Чат с ИИ'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.code),
                  selectedIcon: Icon(Icons.code),
                  label: Text('Код'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.preview_outlined),
                  selectedIcon: Icon(Icons.preview),
                  label: Text('Превью'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings_outlined),
                  selectedIcon: Icon(Icons.settings),
                  label: Text('Настройки'),
                ),
              ],
            ),
          if (isDesktop) const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: _screens[_selectedIndex],
          ),
        ],
      ),
      bottomNavigationBar: !isDesktop
          ? NavigationBar(
              selectedIndex: _selectedIndex,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.chat_bubble_outline),
                  selectedIcon: Icon(Icons.chat_bubble),
                  label: 'Чат',
                ),
                NavigationDestination(
                  icon: Icon(Icons.code),
                  label: 'Код',
                ),
                NavigationDestination(
                  icon: Icon(Icons.preview_outlined),
                  selectedIcon: Icon(Icons.preview),
                  label: 'Превью',
                ),
                NavigationDestination(
                  icon: Icon(Icons.settings_outlined),
                  selectedIcon: Icon(Icons.settings),
                  label: 'Настройки',
                ),
              ],
            )
          : null,
    );
  }
}
