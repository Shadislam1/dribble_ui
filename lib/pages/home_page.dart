
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
          
            children: [
              Row(
                children: [
                  Text(
                    'shad',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    
                    
                  ),
                  //notification
                  Icon(
                    Icons.notifications,
                    color: Colors.white,

                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}