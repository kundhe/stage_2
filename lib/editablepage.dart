import 'package:flutter/material.dart';
import 'package:stage2/data.dart';

class EditablePage extends StatefulWidget {
  const EditablePage({super.key});

  @override
  State<EditablePage> createState() => _EditablePageState();
}

MyCredentials givenCredentials = MyCredentials();

var fullNameController = TextEditingController();
var slackUsernameController = TextEditingController();
var githubHandleController = TextEditingController();
var educationController = TextEditingController();
var experienceController = TextEditingController();
var skillsController = TextEditingController();
var projectsController = TextEditingController();

class _EditablePageState extends State<EditablePage> {
  @override
  void initState() {
    fullNameController.text = givenCredentials.fullName;
    slackUsernameController.text = givenCredentials.slackUsername;
    githubHandleController.text = givenCredentials.githubHandle;
    educationController.text = givenCredentials.education;
    experienceController.text = givenCredentials.experience;
    skillsController.text = givenCredentials.skills;
    projectsController.text = givenCredentials.projects;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: fullNameController,
                  decoration: const InputDecoration(labelText: "Full Name"),
                ),
                TextField(
                  controller: slackUsernameController,
                  decoration:
                      const InputDecoration(labelText: "Slack Username"),
                ),
                TextField(
                  controller: githubHandleController,
                  decoration: const InputDecoration(labelText: "GitHub Handle"),
                ),
                TextField(
                  controller: educationController,
                  decoration: const InputDecoration(labelText: "Education"),
                  // onChanged: (value) {
                  //   education = value;
                  // },
                ),
                TextField(
                  controller: skillsController,
                  minLines: 1,
                  maxLines: 9,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(labelText: "Skills"),
                ),
                TextField(
                  controller: experienceController,
                  minLines: 1,
                  maxLines: 7,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(labelText: "experience"),
                ),
                TextField(
                  controller: projectsController,
                  minLines: 1,
                  maxLines: 7,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(labelText: "Projects"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: FloatingActionButton(
                    child: const Icon(Icons.check),
                    onPressed: () {
                      MyCredentials credentials = MyCredentials();
                      credentials.fullName = fullNameController.text;
                      credentials.slackUsername = slackUsernameController.text;
                      credentials.githubHandle = githubHandleController.text;
                      credentials.education = educationController.text;
                      credentials.skills = skillsController.text;
                      credentials.experience = experienceController.text;
                      credentials.projects = projectsController.text;
                      Navigator.pop(context, credentials);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
