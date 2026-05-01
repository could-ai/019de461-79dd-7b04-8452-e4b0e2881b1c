import 'package:flutter/material.dart';

class PreviewScreen extends StatelessWidget {
  const PreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Превью приложения'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: 'Перезапустить',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Приложение перезапущено')),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 375, // Ширина типичного смартфона
          height: 812, // Высота типичного смартфона
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Colors.grey.shade800, width: 8),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 20,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(32),
            child: Scaffold(
              appBar: AppBar(
                title: const Text('Сгенерированное Приложение', style: TextStyle(fontSize: 16)),
                backgroundColor: Colors.indigo,
                foregroundColor: Colors.white,
              ),
              body: const Center(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.rocket_launch, size: 64, color: Colors.indigo),
                      SizedBox(height: 24),
                      Text(
                        'Ваше приложение успешно запущено!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Здесь вы можете тестировать функционал и игры, созданные искусственным интеллектом.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.indigo,
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
