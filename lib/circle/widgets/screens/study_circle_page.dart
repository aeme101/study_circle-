import 'package:astudy_circle_app/circle/widgets/filter/filter_list.dart';
import 'package:astudy_circle_app/circle/widgets/study_group_card/study_group_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const SCirclePage());
}

class SCirclePage extends StatelessWidget {
  const SCirclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StudyCirclePage(),
    );
  }
}

class StudyCirclePage extends StatelessWidget {
  const StudyCirclePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Circle"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Search Bar and Filter
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search study groups...",
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 10),

                IconButton(
                  icon: const Icon(Icons.filter_list),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const FilterList();
                      },
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  const Text(
                    "Groups Joined",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  GroupCard(
                    title: "Philosophy",
                    members: "12 members",
                    buttonText: "Open",
                    joined: true,
                    onPressed: () => (),
                  ),
                  GroupCard(
                    title: "Law",
                    members: "15 members",
                    buttonText: "Open",
                    joined: true,
                    onPressed: () => (),
                  ),
                  const SizedBox(height: 25),

                  const Text(
                    "Groups Available",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  
                  const SizedBox(height: 10),
                  GroupCard(
                    title: "Mathematics 101",
                    members: "40 members",
                    buttonText: "join",
                    joined: false,
                    onPressed: () => (),
                  ),

                   GroupCard(
                    title: "Chemistry Revision",
                    members: "30 members",
                    buttonText: "Join",
                    joined: false,
                    onPressed: () => (),
                  ),
                  
                   GroupCard(
                    title: "Computer Science",
                    members: "18 members",
                    buttonText: "Join",
                    joined: false,
                    onPressed: () => (),
                  ),
                  
                   GroupCard(
                    title: "Eco-Math 102",
                    members: "7 members",
                    buttonText: "Join",
                    joined: false,
                    onPressed: () => (),
                  ),
                  
                   GroupCard(
                    title: "History 001",
                    members: "12 members",
                    buttonText: "Join",
                    joined: false,
                    onPressed: () => (),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
