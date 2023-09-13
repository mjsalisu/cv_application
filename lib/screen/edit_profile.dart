import 'package:cv_application/model/user_model.dart';
import 'package:cv_application/widget/text_field.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({
    super.key,
    this.name,
    this.slackUsername,
    this.gitHubHandle,
    this.bio,
  });
  final String? name;
  final String? slackUsername;
  final String? gitHubHandle;
  final String? bio;

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final nameController = TextEditingController();
  final slackUsernameController = TextEditingController();
  final gitHubHandleController = TextEditingController();
  final bioController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name ?? '';
    slackUsernameController.text = widget.slackUsername ?? '';
    gitHubHandleController.text = widget.gitHubHandle ?? '';
    bioController.text = widget.bio ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manage CV Profile',
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
    final name = nameController.text;
    final slackUsername = slackUsernameController.text;
    final gitHubHandle = gitHubHandleController.text;
    final bio = bioController.text;

    Navigator.pushNamed(
      context,
      '/',
      arguments: UserModel(
        name: name,
        slackUsername: slackUsername,
        gitHubUsername: gitHubHandle,
        bio: bio,
      ),
    );
  }
}
