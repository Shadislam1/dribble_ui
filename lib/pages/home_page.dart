
import 'package:dribble_ui/utility/emotion_face.dart';
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
              //greeting row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'shad',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 5,),
                      Text(
                        '24 march, 2024',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[100],
                        ),
                        ),
                    ],
                  ),
                  //notification
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.notifications,
                        color: Colors.white,
                                      
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25,),
              // search bar
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                     
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25,),

              //how do you feel
               Row(
                
                mainAxisAlignment: MainAxisAlignment.start
                ,
                 children: [
                   Text(
                        'How do you feel?',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                            ),
                           
                           
                 ],
               ),

               SizedBox(height: 25,),
              //4 different faces
             Row(
              children: [
                EmotionFace(),
              ],
              )

            ],
          ),
        ),
      ),
    );
  }
}