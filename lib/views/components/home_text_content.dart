import 'package:flutter/material.dart';

class FieldCompText extends StatelessWidget {
  const FieldCompText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Column(

      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,

            children: const [
        // Title
        Text(
          'Field Comp',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Color(0xFFB86B35), // warm orange-brown tone
          ),
        ),
        SizedBox(height: 8),

        // Subtitle
        Text(
          'Every photograph tells a story – a fleeting moment of wonder, a memory carved in time.',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontStyle: FontStyle.italic,
            color: Color(0xFF6B4E3D),
          ),
        ),
        SizedBox(height: 16),

        // Body paragraph
        Text(
          'Field Journal lets you capture those fragments of your journey, record your thoughts, and watch as AI brings them to life — drawn, described, and beautifully preserved. Because every explorer deserves a diary worth revisiting.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, height: 1.4, color: Colors.black87),
        ),
      ],
      ),
    );
    
  }
}