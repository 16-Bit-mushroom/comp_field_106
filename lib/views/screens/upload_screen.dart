import 'package:flutter/material.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffff0),
      appBar: AppBar(
        title: const Text('Upload'),
        centerTitle: true,
        backgroundColor: const Color(0xfffffff0),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ==== Upload Photo Section ====
            const Text(
              "Upload photo",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "asdf asgdasppgyuiopajw\nasdgass asdfas asdf as a",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),

            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                    ),
                    child: const Icon(Icons.add_a_photo, size: 40),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // ==== Select Image Section ====
            const Text(
              "Select Image",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "asdf asgdasppgyuiopajw\nasdgass asdfas asdf as a",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.85,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text("Select from gallery..."),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),

            // ==== Button ====
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: const BorderSide(color: Colors.blue),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 12,
                  ),
                ),
                child: const Text(
                  "Create Image",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
