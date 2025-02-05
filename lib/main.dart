import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mohammad Asad Rahmani'),
          backgroundColor: Colors.deepPurple,
          elevation: 4,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.deepPurple,
                      width: 3,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/profile.jpeg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Mohammad Asad Rahmani',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                const Text(
                  'Ai - Ml Engineer',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),

                // Information Boxes
                _buildInfoBox(
                  title: 'About Me',
                  content: Text(
                      'I am a student at Techno India University pursuing a degree in BTech CSE with specialization in AIML. I am passionate about using data to derive insights and build intelligent systems to make real world impact.'),
                ),
                const SizedBox(height: 20),
                _buildInfoBox(
                  title: 'Skills',
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      _SkillItem('GCP , Azure , AWS'),
                      _SkillItem('DevOps'),
                      _SkillItem('Data Science'),
                      _SkillItem('RDBMS : SQL ,NoSQL'),
                      _SkillItem('Machine Learning'),
                      _SkillItem('Artificial Intelligence'),
                      _SkillItem('Flutter & Dart'),
                      _SkillItem('Firebase Integration'),
                      _SkillItem('Git & Version Control'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                _buildInfoBox(
                  title: 'Education',
                  content: Column(
                    children: const [
                      _ExperienceItem(
                        company: 'Techno India University',
                        role: 'Btech in CSE with AI - ML',
                        duration: '2022-2026',
                      ),
                      _ExperienceItem(
                        company: 'Church School , Beldih',
                        role: 'ICSE and ISC',
                        duration: '',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                _buildInfoBox(
                  title: 'Contact',
                  content: Column(
                    children: const [
                      _ContactItem(
                        icon: Icons.email,
                        info: 'asadrahmani3101@gmail.com',
                      ),
                      _ContactItem(
                        icon: Icons.phone,
                        info: '9142145488',
                      ),
                      _ContactItem(
                        icon: Icons.location_on,
                        info: 'Kolkata , India',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoBox({required String title, required Widget content}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 66, 36, 117),
            ),
          ),
          const SizedBox(height: 15),
          content,
        ],
      ),
    );
  }
}

class _SkillItem extends StatelessWidget {
  final String skill;

  const _SkillItem(this.skill);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Colors.deepPurple,
            size: 18,
          ),
          const SizedBox(width: 8),
          Text(
            skill,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class _ExperienceItem extends StatelessWidget {
  final String company;
  final String role;
  final String duration;

  const _ExperienceItem({
    required this.company,
    required this.role,
    required this.duration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            company,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(role),
        ],
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {
  final IconData icon;
  final String info;

  const _ContactItem({
    required this.icon,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple),
          const SizedBox(width: 15),
          Text(
            info,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
