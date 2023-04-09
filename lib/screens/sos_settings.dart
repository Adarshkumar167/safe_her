import 'package:flutter/material.dart';

import '../components/nav_bar.dart';

class SosSettings extends StatefulWidget {
  const SosSettings({super.key});

  @override
  State<SosSettings> createState() => _SosSettingsState();
}

class _SosSettingsState extends State<SosSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4467,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.16,
                        child: MaterialButton(
                            height: 40.0,
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.white,
                            textColor: const Color.fromRGBO(238, 75, 76, 1),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.arrow_back_ios_new,
                                  size: 18,
                                ),
                              ],
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.48,
                        child: const Text(
                          'SOS Settings',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.16,
                        child: MaterialButton(
                          height: 40.0,
                          onPressed: () {},
                          color: Colors.white,
                          textColor: const Color.fromRGBO(238, 75, 76, 1),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: 24.0,
                            height: 24.0,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/images/logo_2.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const NavBar(),
    );
  }
}
