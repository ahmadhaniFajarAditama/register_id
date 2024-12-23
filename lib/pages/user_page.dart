import 'package:flutter/material.dart';
import 'package:register_id/widgets/user_card.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Door Access Key',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.bar_chart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Bluetooth Toggle Section
          Container(
            color: Colors.blue.shade100,
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text(
                      'Bluetooth',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    IconButton(
                      icon: const Icon(Icons.info_outline, color: Colors.black),
                      onPressed: () {},
                    ),
                  ],
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                  activeColor: Colors.blue,
                ),
              ],
            ),
          ),

          // Fingerprint Access Section
          const SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                const Row(
                  children: [
                    Icon(Icons.fingerprint_rounded),
                    Text(
                      'Fingerprint Access', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 20.0
                      ),
                    ), 
                  ],
                ),
                UserCard(
                  name: 'Rezki Muhammad',
                  description: 'Yaris Cross Owner',
                  color: Colors.yellow.shade100,
                ),
                UserCard(
                  name: 'Ahmadhani Fajar Aditama',
                  description: '',
                  color: Colors.purple.shade100,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Row(
                  children: [
                    Icon(Icons.nfc_rounded),
                    Text(
                      'Card/NFC Access', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold, 
                        fontSize: 20.0
                      ),
                    ), 
                  ],
                ),
                UserCard(
                  name: 'Rezki Muhammad',
                  description: 'Yaris Cross Owner',
                  color: Colors.yellow.shade100,
                ),
                UserCard(
                  name: 'Ahmadhani Fajar Aditama',
                  description: '',
                  color: Colors.purple.shade100,
                ),
              ],
            ),
          ),

          // Add New User Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.person_add, color: Colors.white),
              label: const Text(
                'Add New User',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


