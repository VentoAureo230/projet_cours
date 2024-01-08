import 'package:flutter/material.dart';
import 'package:projet_cours/progress_bar.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({super.key});

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          width: 150,
          height: 150,
          margin: const EdgeInsets.only(left: 0), // bug
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/logo.png'),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Row(
            children: [
              Text(
                'Kevin Rongieras',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const Row(
            children: [Text('Compétences')],
          ),
          const SizedBox(height: 15,),
          Expanded(
            child: ListView(
              children: const [
                ProgressBar(percentage: 10, title: 'C1', description: 'Maitriser le maniement du véhicule dans un traffic faible',),
                ProgressBar(percentage: 12, title: 'C2', description: 'Appréhender la route et circuler dans des conditions normales',),
                ProgressBar(percentage: 79, title: 'C3', description: 'Circuler dans des conditions difficiles et partager la routes avec les ...',),
                ProgressBar(percentage: 45, title: 'C4', description: 'Effectuer les manoeuvre',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
