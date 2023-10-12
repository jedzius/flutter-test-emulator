import 'package:flutter/material.dart';
import 'package:flutter_app_test_emulator/page/connections.dart';
import 'package:flutter_app_test_emulator/page/dashboard.dart';
import 'package:flutter_app_test_emulator/page/settings.dart';
import 'package:flutter_app_test_emulator/page/profile.dart';

class Home extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> pages = [
    Profile(),
    Dashboard(),
    Settings(),
    Connections()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  void _setScreen(int currentTab, Widget currentScreen) {
    setState(() {
      this.currentTab = currentTab;
      this.currentScreen = currentScreen;
    });
  }

  Color _matchColor(int currentTab) => this.currentTab == currentTab
      ? Color.fromARGB(255, 98, 1, 167)
      : Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: this.currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 98, 1, 167),
        child: Icon(Icons.add),
        tooltip: 'Add new connection',
        onPressed: () => {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Container(
          height: 60,
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => _setScreen(0, Dashboard()),
                    child: Column(children: [
                      Icon(Icons.dashboard, color: _matchColor(0)),
                      Text('Dashboard', style: TextStyle(color: _matchColor(0)))
                    ]),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => _setScreen(1, Profile()),
                    child: Column(children: [
                      Icon(Icons.people, color: _matchColor(1)),
                      Text('Profile', style: TextStyle(color: _matchColor(1)))
                    ]),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => _setScreen(2, Settings()),
                    child: Column(children: [
                      Icon(Icons.settings, color: _matchColor(2)),
                      Text('Settings', style: TextStyle(color: _matchColor(2)))
                    ]),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () => _setScreen(3, Connections()),
                    child: Column(children: [
                      Icon(Icons.private_connectivity, color: _matchColor(3)),
                      Text('Connections',
                          style: TextStyle(color: _matchColor(3)))
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
