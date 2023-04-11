import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ForgotPassowrdPage extends StatefulWidget {
  const ForgotPassowrdPage({super.key});

  @override
  State<ForgotPassowrdPage> createState() => _ForgotPassowrdPageState();
}

class _ForgotPassowrdPageState extends State<ForgotPassowrdPage> {
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
      // ignore: use_build_context_synchronously
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text('Password reset link sent! Check your email.'),
          );
        },
      );
    } on FirebaseAuthException catch (e) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(e.message.toString()),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(37, 43, 57, 1),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: const Text(
              'Enter Your Email and we will send you a password reset link',
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide:
                      const BorderSide(color: Color.fromRGBO(37, 43, 57, 1)),
                ),
                hintText: 'Email',
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.01),
          MaterialButton(
            onPressed: passwordReset,
            color: const Color.fromRGBO(37, 43, 57, 1),
            child: const Text(
              'Reset Password',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
