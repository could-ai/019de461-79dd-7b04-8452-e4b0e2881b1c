import 'package:flutter/material.dart';

class EditorScreen extends StatefulWidget {
  const EditorScreen({super.key});

  @override
  State<EditorScreen> createState() => _EditorScreenState();
}

class _EditorScreenState extends State<EditorScreen> {
  final TextEditingController _codeController = TextEditingController(
    text: '''import 'package:flutter/material.dart';

// Этот код сгенерирован ИИ. Вы можете редактировать его здесь.
// Нет никаких ограничений на то, что вы можете создать.

void main() {
  runApp(const GeneratedApp());
}

class GeneratedApp extends StatelessWidget {
  const GeneratedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Моё крутое приложение',
      theme: ThemeData.dark(),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Главный экран'),
      ),
      body: const Center(
        child: Text('Приложение готово к работе!'),
      ),
    );
  }
}
''',
  );

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Редактор кода'),
        actions: [
          IconButton(
            icon: const Icon(Icons.save),
            tooltip: 'Сохранить изменения',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Код сохранен и применен!')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow),
            tooltip: 'Запустить (Превью)',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Перейдите на вкладку Превью для просмотра')),
              );
            },
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: const Color(0xFF1E1E1E), // Темный фон в стиле VS Code
        child: TextField(
          controller: _codeController,
          maxLines: null,
          expands: true,
          style: const TextStyle(
            fontFamily: 'monospace',
            fontSize: 14.0,
            color: Color(0xFFD4D4D4),
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            isDense: true,
          ),
        ),
      ),
    );
  }
}
