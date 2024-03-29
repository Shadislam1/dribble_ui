
import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final String  emotionFace;
  const EmotionFace({
    super.key, required this.emotionFace,
  });

  @override
  Widget build(BuildContext context) {
    return  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:Center(
                        child: Text(
                          emotionFace,
                          style: TextStyle(
                            fontSize: 28,
                          ),
                          
                          ),
                          
                          ),
                    ),
                  );
  }
}