import 'package:cv_application/screen/edit_profile.dart';
import 'package:cv_application/screen/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const ProfileScreen(),
        '/edit': (context) => const EditProfileScreen(),
      },
    ),
  );
}
