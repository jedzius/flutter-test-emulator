import 'package:flutter/material.dart';

class Connections extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ConnectionsState createState() => _ConnectionsState();
}

class _ConnectionsState extends State<Connections> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: null,
      body: SafeArea(
        child: Center(
          child: Text("witam"),
        ),
      ),
    );
  }
}
