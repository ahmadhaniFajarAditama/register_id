import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back, 
            color: Colors.white, 
            size: 28.0,
          ),
          onPressed: (){}
        ),
        title: const Center(
          child: Text(
            'Door Access Key',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(icon: const Icon(
            Icons.bar_chart, 
            color: Colors.white, 
            size: 28.0,), 
            onPressed: (){}
          ),
        ],
      ),
      body: Container(
        color: Colors.blueGrey[50],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey[300],
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Bluetooth',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                        IconButton(icon: Icon(Icons.info_outline), onPressed: (){
                          showDialog(
                            context: context, 
                            builder: (context) => AlertDialog(
                              title: const Text('Bluetooth Info'),
                              content: const Text('Give permission to aplication'),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context), 
                                  child: const Text('OK'),
                                ),
                              ],
                            )
                          );
                        }
                        ),
                        Switch(
                          
                          value: false, 
                          // onChanged: onToggle,
                          activeColor: Colors.blueGrey,
                          inactiveThumbColor: Colors.grey,
                          inactiveTrackColor: Colors.white12, 
                          onChanged: (bool value) { false; },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}