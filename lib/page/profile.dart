import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hello World, Profile!'), backgroundColor: Color.fromARGB(255, 98, 1, 167),),
      body: const Center(
        child: Text('Profile!'),
      ),
    );
  }
}