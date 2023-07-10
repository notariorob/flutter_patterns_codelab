import 'package:flutter/material.dart';
import 'package:flutter_patterns_codelab/data.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: DocumentScreen(document: Document()),
    );
  }
}

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({super.key, required this.document});

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified $modified',
            ),
          )
        ],
      ),
    );
  }
}
