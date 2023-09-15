import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
      title: 'My app',
      home: SafeArea(
        child: MyScaffold(),
      )));
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          title: const Text('Example title'),
          actions: const [
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: null,
            ),
          ],
        ),
        body: const Center(
          child: Text('Hello, world!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('Floating Action Button pressed');
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.navigation),
        ));
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56, // in logical pixels
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      // Row is a horizontal, linear layout.
      child: Row(
        children: [
          IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Navigation menu',
              onPressed: () {
                print('Menu button pressed');
              }),
          // Expanded expands its child
          // to fill the available space.
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
