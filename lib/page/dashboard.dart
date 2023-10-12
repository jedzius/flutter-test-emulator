import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World, Dashboard!'),
        backgroundColor: Color.fromARGB(255, 98, 1, 167),
      ),
      body: const Center(
        child: Text('Dashboard!', style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
