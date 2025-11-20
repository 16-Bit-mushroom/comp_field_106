import 'package:flutter/material.dart';

void main() {
  runApp(const StudentDashboard());
}

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              onPressed: () {
                // ignore: avoid_print
                print('Logout clicked');
              },
              icon: Icon(Icons.logout, color: Colors.blue[50]),
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('image/student.jpg'),
                      maxRadius: 60.00,
                    ),
                    const SizedBox(width: 20),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Chris Cyrel Estil',
                          style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 12, 19, 23),
                          ),
                        ),
                        const Text(
                          '543843, CCE106',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: const <Widget>[
                    ListTile(
                      leading: Icon(Icons.email, color: Colors.blue),
                      title: Text('Email'),
                      subtitle: Text('chriscyrelestil@gmail.com'),
                      trailing: Icon(Icons.copy, color: Colors.grey),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.phone, color: Colors.blue),
                      title: Text('Contact Number'),
                      subtitle: Text('09562442031'),
                      trailing: Icon(Icons.copy, color: Colors.grey),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.location_city, color: Colors.blue),
                      title: Text('Address'),
                      subtitle: Text('783 Watusi, Buhangin Pob. Davao City'),
                      trailing: Icon(Icons.copy, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
