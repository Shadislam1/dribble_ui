
import 'package:flutter/material.dart';
class ExerciseTile extends StatelessWidget {
  final icon;
  final String excerciseName;
  final int numberOfExercise;
  final color;
  const ExerciseTile(
    {super.key,
    required this.excerciseName,
    required this.icon,
     required this.numberOfExercise,
     required this.color,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                         color: Colors.white
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                              ),
                             Container(
                              padding: EdgeInsets.all(16),
                              color: color,
                             
                             
                              child: Icon(
                                icon,
                                color: Colors.white,
                                ),
    
                              ),
                            SizedBox(
                              width: 12,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //title
                                Text(
                                 excerciseName ,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                        SizedBox(height: 5,),
                                //subtitle
    
                                 Text(
                                    numberOfExercise.toString()+ 'Exercise',
                                   style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                ),
                               
                              ],
                              
                            ),
                           ],),
                              Icon(Icons.more_horiz),
                          ],
                        ) 
                        ),
    );
  }
                    
  
}