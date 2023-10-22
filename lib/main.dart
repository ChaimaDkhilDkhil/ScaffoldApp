import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldSample(),
    ),
  );
}

class AffirmationCard extends StatelessWidget {
  const AffirmationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/image1.jpg",
            height: 100,
            width: 100,
            fit: BoxFit.cover,
          ),
          const Text(
            "Affirmation Title",
            style: TextStyle(
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class AffirmationList extends StatelessWidget {
  const AffirmationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AffirmationCard(),
        AffirmationCard(),
        AffirmationCard(),
      ],
    );
  }
}

class ScaffoldSample extends StatelessWidget {
  const ScaffoldSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Dev")),
      body: const AffirmationList(),
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
