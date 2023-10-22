import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ScaffoldSample extends StatelessWidget {
  const ScaffoldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Dev")),
      body: const Center(child: Text("Welcome to Flutter Dev")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (kDebugMode) {
            print("Floating action button pressed!");
          }
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              child: Text("My First Drawer"),
            ),
            ListTile(
              title: const Text("Item 1"),
              onTap: () {
                if (kDebugMode) {
                  print("Item 1 tapped");
                }
              },
            ),
            ListTile(
              title: const Text("Item 2"),
              onTap: () {
                if (kDebugMode) {
                  print("Item 2 tapped");
                }
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int indexOfItem) {
          if (kDebugMode) {
            print("Tapped item $indexOfItem");
          }
        },
      ),
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldSample(),
    ),
  );
}
