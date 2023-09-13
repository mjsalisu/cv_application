import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My CV Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 100,
              backgroundColor: Colors.blue[50],
              child: Text(
                'Coming soon...',
                style: TextStyle(
                  color: Colors.blue[200],
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Jamilu Salisu',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(height: 10),
            const Divider(color: Colors.grey),
            const SizedBox(height: 10),
            const Text(
              'Connect with me via...',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const ListTile(
              title: Text('@mjsalisu'),
              subtitle: Text(
                'Slack',
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
              trailing: Icon(Icons.message),
            ),
            const ListTile(
              title: Text('@mjsalisu'),
              subtitle: Text(
                'GitHub',
                style: TextStyle(
                  color: Colors.black26,
                ),
              ),
              trailing: Icon(Icons.code),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/edit');
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
