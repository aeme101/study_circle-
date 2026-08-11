import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  const GroupCard({
    super.key,

    required this.title,
    required this.members,
    required this.joined,
    required this.buttonText,
    this.onPressed,
  });

  final String title;
  final dynamic members;
  final bool joined;
  final String buttonText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.groups)),
        title: Text(title),
        subtitle: Text(members),
        trailing: ElevatedButton(onPressed: () {},
        style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Color(0xFF2E7D32))),
         child: Text(buttonText, style:TextStyle(color: Colors.white) ,),
         ),
      ),
    );
  }
}
