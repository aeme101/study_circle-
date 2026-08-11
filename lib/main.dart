import 'package:astudy_circle_app/circle/widgets/screens/study_circle_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const StudyCircleApp());
}

class StudyCircleApp extends StatelessWidget {
  const StudyCircleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SCirclePage(),
    );
  }
}
