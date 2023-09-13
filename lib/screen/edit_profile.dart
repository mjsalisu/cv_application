import 'package:cv_application/model/user_model.dart';
import 'package:cv_application/widget/text_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({
    super.key,
    required this.user,
  });
  final UserModel user;

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController nameController;
  late TextEditingController slackUsernameController;
  late TextEditingController gitHubHandleController;
  late TextEditingController bioController;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with the initial user data
    nameController = TextEditingController(text: widget.user.name);
    slackUsernameController =
        TextEditingController(text: widget.user.slackUsername);
    gitHubHandleController =
        TextEditingController(text: widget.user.gitHubUsername);
    bioController = TextEditingController(text: widget.user.bio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          MyTextFormField(
            controllerName: nameController,
            label: 'Full name',
          ),
          const SizedBox(height: 15),
          MyTextFormField(
            controllerName: slackUsernameController,
            label: 'Slack Username',
          ),
          const SizedBox(height: 15),
          MyTextFormField(
            controllerName: gitHubHandleController,
            label: 'GitHub Username',
          ),
          const SizedBox(height: 15),
          MyTextFormField(
            controllerName: bioController,
            label: 'Bio',
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            onPressed: onProfileUpdateAction,
            child: const Center(
              child: Text('Update Profile'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> onProfileUpdateAction() async {
    final updatedUser = UserModel(
      name: nameController.text,
      slackUsername: slackUsernameController.text,
      gitHubUsername: gitHubHandleController.text,
      bio: bioController.text,
    );
    Navigator.pop(context, updatedUser);
  }
}
