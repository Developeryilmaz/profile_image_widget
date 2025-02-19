import 'package:flutter/material.dart';
import 'package:profile_image_widget/profile_image_widget.dart';

void main() {
  runApp(const ExampleScreen());
}

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Image Widget Example')),
      body: Center(
        child: ProfileImage(
          photoUrl: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
          defaultImageUrl: 'https://cdn-icons-png.flaticon.com/512/149/149071.png',
          size: 256,
        ),
      ),
    );
  }
}
