import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Signed in as ${user.email!}',
          style: const TextStyle(color: Colors.black),
        ),
        MaterialButton(
          height: MediaQuery.of(context).size.height * 0.05,
          onPressed: () {
            FirebaseAuth.instance.signOut();
          },
          color: const Color.fromRGBO(37, 43, 57, 1),
          child: const Text(
            'Sign Out',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
