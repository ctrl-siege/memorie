import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:memorie/screens/create_notes.dart';
import 'package:memorie/screens/home_screen.dart';
import 'package:memorie/screens/login_screen.dart';
import 'package:memorie/screens/notes_screen.dart';
import 'package:memorie/screens/flashcards_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Memorie',
    initialRoute: '/',
    routes: {
      '/': (context) => LoginScreen(),
      '/app': (context) => HomeScreen(),
      '/create_notes': (context) => CreateNotesScreen(),
      '/notes': (context) => NotesScreen(),
      '/flashcards': (context) => FlashcardsScreen(),
    },
  ));
}
