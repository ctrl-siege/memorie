import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

class LoginScreen extends HookWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Memorie."),
            Gap(100),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Enter email address"),
                constraints: BoxConstraints(maxHeight: 320, maxWidth: 450),
              ),
            ),
            Gap(30),
            OutlinedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/app');
              },
              child: Text("Enter"),
            ),
          ],
        ),
      ),
    );
  }
}
