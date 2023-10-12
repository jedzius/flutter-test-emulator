import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello World, Settings!'), backgroundColor: Color.fromARGB(255, 98, 1, 167),),
      body: const Center(
        child: Text('Settings!'),
      ),
    );
  }
}