
import 'package:dribble_ui/utility/emotion_face.dart';
import 'package:dribble_ui/utility/excercise_tile.dart';
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
      bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon:Icon(Icons.home),label: ''),
      BottomNavigationBarItem(icon:Icon(Icons.message),label: ''),
      BottomNavigationBarItem(icon:Icon(Icons.person),label: ''),
      ]),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:8.0),
          child: Column(
          
            children: [
              //greeting row
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                children: [
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      EmotionFace(
                        emotionFace: '😘',
                        
                        ),
                        SizedBox(height:8),
                        Text(
                      'Love',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                     
                      
                    ],
                  ),
                     
                  SizedBox(width: 10,),
                  //fine
                     
                   Column(
                    children: [
                      EmotionFace(
                        emotionFace: '😉',
                        
                        ),
                        SizedBox(height:8),
                        Text(
                      'Happy',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                     
                      
                    ],
                  ),
                    
                   
                        
                   SizedBox(width: 10,),
                     
                  // bad
                   Column(
                    children: [
                      EmotionFace(
                        emotionFace: '😥',
                        
                        ),
                        SizedBox(height:8),
                        Text(
                      'mood off',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                     
                      
                    ],
                  ),
                  SizedBox(width: 10,),
                  //excelent
                     
                   Column(
                    children: [
                      EmotionFace(
                        emotionFace: '👻',
                        
                        ),
                        SizedBox(height:8),
                        Text(
                      'Gost',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                     
                      
                    ],
                  ),
                ],
                ),
                ],
               ),
             ),
             SizedBox(height: 25,),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
             
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    //excercise heading
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercises",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          ),
                        Icon(Icons.more_horiz),
                        
                      ],
                    ),

                    SizedBox(height: 20,),
                    //list of exercise
                   Expanded(
                     child: ListView(
                      children: [
                        ExerciseTile(
                          icon: Icons.favorite,
                          excerciseName: 'Speaking Skill',
                          numberOfExercise: 16,
                          color: Colors.orange,
                        ),
                         ExerciseTile(
                          icon: Icons.person,
                          excerciseName: 'Reading Skill',
                          numberOfExercise: 8,
                          color: Colors.green,
                         ),
                          ExerciseTile(
                            icon: Icons.star,
                          excerciseName: 'Writing Skill',
                          numberOfExercise: 20,
                          color: Colors.purple,
                          ),

                      ],
                     ),
                   )
                  
                  ],
                ),
              ),
            ),
          )
            ],
          ),
        ),
      ),
    );
  }
}