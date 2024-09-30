import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("This is the home screen"),
                    Gap(20),
                    OutlinedButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/create_notes');
                        },
                        icon: Icon(Icons.add),
                        label: Text("Create Notes")),
                  ]),
              Gap(50),
              Card(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/notes');
                  },
                  child: Text("This is some notes."),
                ),
              ),
              Gap(100),
              OutlinedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Exit"),
              ),
            ]),
      ),
    );
  }
}
