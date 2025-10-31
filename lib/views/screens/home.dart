import 'package:flutter/material.dart';
import 'package:comp_field/views/screens/upload_screen.dart';
import 'package:comp_field/views/components/album_search.dart';
import 'package:comp_field/views/components/home_text_content.dart';
import 'package:comp_field/views/components/recent_cards.dart';
// import 'package:comp_field/views/components/grey_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffff0),
      appBar: AppBar(
        title: const Text('My App'),
        centerTitle: true,
        backgroundColor: const Color(0xfffffff0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                GreyBox(),
                GreyBox(),
                GreyBox(),
              ],
            ),
            const SizedBox(height: 40),
            const Center(child: FieldCompText()),
            const SizedBox(height: 40),
            const Center(child: AlbumSearchSection()),
          ],
        ),
      ),

      // ✅ New Design Button at the Bottom
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UploadScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
            label: const Text(
              'New Design',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 3,
            ),
          ),
        ),
      ),
    );
  }
}
