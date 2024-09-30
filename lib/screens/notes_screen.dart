import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NotesScreen extends HookWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OutlinedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
              label: Text("Return"),
              iconAlignment: IconAlignment.start,
            ),
            Text("This is the notes screen"),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/flashcards');
              },
              child: Text("Flashcards"),
            )
          ],
        ),
      ),
    );
  }
}
