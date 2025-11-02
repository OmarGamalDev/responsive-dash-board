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
              style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 24)),
            ),
            SizedBox(height: 20),
            Text(
              'This is the home view of the dashboard.',
              style: TextStyle(fontSize: getResponsiveFontSize(context: context, fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

double getResponsiveFontSize({required BuildContext context, required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 1200) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
