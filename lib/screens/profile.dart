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
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Text(
                'Profile',
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.height * 0.2,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/women.png'),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 15,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color.fromRGBO(37, 43, 57, 1),
                      ),
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              // Text(
              //   'Hi ${user}',
              //   style: const TextStyle(color: Colors.black),
              // ),
              const Text(
                'Hi Adarsh Kumar',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
              Text(
                user.email!,
                style: const TextStyle(color: Colors.black),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              MaterialButton(
                height: MediaQuery.of(context).size.height * 0.05,
                minWidth: MediaQuery.of(context).size.height * 0.25,
                color: const Color.fromRGBO(37, 43, 57, 1),
                child: const Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.12),
                leading: Container(
                  width: MediaQuery.of(context).size.height * 0.05,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(37, 43, 57, 1).withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.call_outlined,
                    color: Color.fromRGBO(37, 43, 57, 1),
                  ),
                ),
                title: const Text('Contact Us'),
                trailing: Container(
                  width: MediaQuery.of(context).size.height * 0.04,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(37, 43, 57, 1).withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color.fromRGBO(37, 43, 57, 1),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.12),
                leading: Container(
                  width: MediaQuery.of(context).size.height * 0.05,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(37, 43, 57, 1).withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.privacy_tip_outlined,
                    color: Color.fromRGBO(37, 43, 57, 1),
                  ),
                ),
                title: const Text('Privacy Policy'),
                trailing: Container(
                  width: MediaQuery.of(context).size.height * 0.04,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(37, 43, 57, 1).withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color.fromRGBO(37, 43, 57, 1),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.12),
                leading: Container(
                  width: MediaQuery.of(context).size.height * 0.05,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(37, 43, 57, 1).withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.newspaper_outlined,
                    color: Color.fromRGBO(37, 43, 57, 1),
                  ),
                ),
                title: const Text('Terms & Conditions'),
                trailing: Container(
                  width: MediaQuery.of(context).size.height * 0.04,
                  height: MediaQuery.of(context).size.height * 0.04,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromRGBO(37, 43, 57, 1).withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color.fromRGBO(37, 43, 57, 1),
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              MaterialButton(
                height: MediaQuery.of(context).size.height * 0.05,
                onPressed: () {
                  FirebaseAuth.instance.signOut();
                },
                color: const Color.fromRGBO(238, 75, 76, 1),
                child: const Text(
                  'Sign Out',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
