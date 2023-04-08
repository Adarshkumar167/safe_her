import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4467,
            width: MediaQuery.of(context).size.width,
            color: Color.fromRGBO(37, 43, 57, 1),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: MaterialButton(
                            height: 40.0,
                            onPressed: () {},
                            color: Colors.white,
                            textColor: Color.fromRGBO(238, 75, 76, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  size: 18,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Las...',
                                    style: TextStyle(fontSize: 18.0)),
                              ],
                            )),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: MaterialButton(
                            height: 40.0,
                            onPressed: () {},
                            color: Color.fromRGBO(238, 75, 76, 1),
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(10.0),
                                bottomRight: Radius.circular(10.0),
                              ),
                            ),
                            child:
                                Text('SOS', style: TextStyle(fontSize: 18.0))),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/logo_1.png'),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                child: MaterialButton(
                    height: 40.0,
                    onPressed: () {},
                    color: Color.fromRGBO(37, 43, 57, 1),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Icon(
                            Icons.record_voice_over_outlined,
                            size: 50,
                          ),
                        ),
                        Text(
                          'Recordings',
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                child: MaterialButton(
                    height: 40.0,
                    onPressed: () {},
                    color: Color.fromRGBO(37, 43, 57, 1),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Icon(
                            Icons.settings,
                            size: 50,
                          ),
                        ),
                        Text(
                          'SOS Settings',
                          style: TextStyle(fontSize: 12.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                child: MaterialButton(
                    height: 40.0,
                    onPressed: () {},
                    color: Color.fromRGBO(37, 43, 57, 1),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Icon(
                            Icons.location_on_outlined,
                            size: 50,
                          ),
                        ),
                        Text(
                          'Maps',
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                height: MediaQuery.of(context).size.width * 0.3,
                child: MaterialButton(
                    height: 40.0,
                    onPressed: () {},
                    color: Color.fromRGBO(37, 43, 57, 1),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0),
                        bottomRight: Radius.circular(10.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Icon(
                            Icons.volume_down_outlined,
                            size: 50,
                          ),
                        ),
                        Text(
                          'Audio',
                          style: TextStyle(fontSize: 14.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(height: 30),
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: GNav(
              color: Colors.black,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromRGBO(238, 75, 76, 1),
              gap: 8,
              padding: EdgeInsets.all(20),
              tabs: [
                GButton(
                  icon: Icons.home_rounded,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.question_answer_sharp,
                  text: 'FAQ',
                ),
                GButton(
                  icon: Icons.person_2_outlined,
                  text: 'Profile',
                ),
              ]),
        ),
      ),
    );
  }
}
