
import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  const EmotionFace({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                     
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child:Text('😘')
                    ),
                  );
  }
}