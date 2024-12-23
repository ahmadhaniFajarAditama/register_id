import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String description;
  final Color color;

  const UserCard({
    required this.name,
    required this.description,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.grey,
          child: Icon(Icons.person, color: Colors.white),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(description),
        trailing: PopupMenuButton<int>(
          icon: const Icon(Icons.more_vert),
          onSelected: (value) {
            // Handle the selected action
            if (value == 1) {
              // Action for Edit
              print('Edit selected');
            } else if (value == 2) {
              // Action for Delete
              print('Delete selected');
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(
              value: 1,
              child: Row(
                children: const [
                  Icon(Icons.edit, color: Colors.black),
                  SizedBox(width: 8),
                  Text('Edit'),
                ],
              ),
            ),
            PopupMenuItem(
              value: 2,
              child: Row(
                children: const [
                  Icon(Icons.delete, color: Colors.red),
                  SizedBox(width: 8),
                  Text('Delete'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
