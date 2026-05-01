import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const AiAppBuilder());
}

class AiAppBuilder extends StatelessWidget {
  const AiAppBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Создатель Приложений',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
