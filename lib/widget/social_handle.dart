import 'package:flutter/material.dart';

class SocialHandle extends StatelessWidget {
  const SocialHandle({
    super.key,
    required this.socailHandleName,
    required this.username,
    required this.icon,
  });

  final String socailHandleName;
  final String username;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(username),
      subtitle: Text(
        socailHandleName,
        style: const TextStyle(
          color: Colors.black26,
        ),
      ),
      trailing: Icon(icon),
    );
  }
}
