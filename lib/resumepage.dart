import 'package:flutter/material.dart';
import 'package:stage2/data.dart';
import 'package:stage2/editablepage.dart';

class ResumePage extends StatefulWidget {
  const ResumePage({super.key});

  @override
  State<ResumePage> createState() => _ResumePageState();
}

MyCredentials myCredentials = MyCredentials();

String name = 'Okundalaye great';

class _ResumePageState extends State<ResumePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF02A2C8),
      appBar: AppBar(
        backgroundColor: const Color(0xFF025981),
        title: const Center(
          child: Text(
            'My Resume',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.edit,
            ),
            onPressed: () async {
              var updateCredential = await Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EditablePage(),
                ),
              );
              if (updateCredential != null) {
                setState(() {
                  myCredentials.fullName = updateCredential.fullName;
                  myCredentials.slackUsername = updateCredential.slackUsername;
                  myCredentials.githubHandle = updateCredential.githubHandle;
                  myCredentials.education = updateCredential.education;
                  myCredentials.skills = updateCredential.skills;
                  myCredentials.experience = updateCredential.experience;
                  myCredentials.projects = updateCredential.projects;
                });
              }
            },
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 19, 0, 9),
                    child: Text(
                      myCredentials.fullName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 15.0,
                        backgroundImage: AssetImage('images/slack.png'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        myCredentials.slackUsername,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage('images/github.png'),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        myCredentials.githubHandle,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Text(
                        'Education:',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      myCredentials.education,
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'Skills:',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      myCredentials.skills,
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'Experience:',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      myCredentials.experience,
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 5.0),
                      child: Text(
                        'Projects',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      myCredentials.projects,
                      style: const TextStyle(
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
