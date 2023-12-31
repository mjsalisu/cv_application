import 'package:cv_application/model/user_model.dart';
import 'package:cv_application/screen/edit_profile.dart';
import 'package:cv_application/widget/social_handle.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserModel user = UserModel(
    name: 'Jamilu Salisu',
    slackUsername: '@mjsalisu',
    gitHubUsername: '@mjsalisu',
    bio: "I am a Software Engineer",
  );

  @override
  Widget build(BuildContext context) {
    final UserModel? userModel =
        ModalRoute.of(context)?.settings.arguments as UserModel?;

    if (userModel != null) {
      setState(
        () {
          user.name = userModel.name;
          user.slackUsername = userModel.slackUsername;
          user.gitHubUsername = userModel.gitHubUsername;
          user.bio = userModel.bio;
        },
      );
    }

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
            Text(
              user.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              user.bio,
              maxLines: 6,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
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
            SocialHandle(
              username: user.slackUsername,
              socailHandleName: 'Slack',
              icon: Icons.message,
            ),
            SocialHandle(
              username: user.gitHubUsername,
              socailHandleName: 'GitHub',
              icon: Icons.code,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final updatedUser = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditProfileScreen(
                user: user,
              ),
            ),
          );

          if (updatedUser != null) {
            setState(() {
              user = updatedUser;
            });
          }
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
