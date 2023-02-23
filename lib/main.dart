import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const appTitle = 'ViroTour Demo';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('ViroTour Menu'),
            ),
            ListTile(
              title: const Text('Start Tour'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_circle_outline),
              title: const Text('Create Tour'),
              onTap: () {
                Navigator.pushNamed(
                    context,
                    MaterialPageRoute(builder: (context) => const CreateTour())
                        as String);
              },
            ),
            ListTile(
                leading: const Icon(Icons.mode_edit),
                title: const Text('Edit Tour'),
                onTap: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}

class CreateTour extends StatelessWidget {
  const CreateTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Tour'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `Create Tour` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, 'Create Tour');
          },
          child: const Text('Launch screen'),
        ),
      ),
    );
  }
}

class EditTour extends StatelessWidget {
  const EditTour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Tour'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pushNamed(context, 'Edit Tour');
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
