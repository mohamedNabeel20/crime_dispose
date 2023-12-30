import 'package:crime_dispose/screens/user/Profile%20view.dart';
import 'package:crime_dispose/screens/user/change%20password.dart';
import 'package:crime_dispose/screens/user/view%20student%20Profile.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(color: Colors.white, onPressed: () {   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage(),));}, icon: Icon(Icons.arrow_back),),
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Settings",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),
            ),
            const SizedBox(height: 40),
            Card(
              child: ListTile(
                title: const Text("My Profile"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ViewStudentProfile()),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Change Password"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Edit_password()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
