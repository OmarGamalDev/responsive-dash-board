import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Responsive Dashboard')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Text(
              'Hello, Responsive Dashboard!',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.05,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'This is the home view of the dashboard.',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width * 0.04,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
