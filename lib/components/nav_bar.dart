import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: GNav(
          color: Colors.black,
          activeColor: Colors.white,
          tabBackgroundColor: const Color.fromRGBO(238, 75, 76, 1),
          gap: 8,
          padding: const EdgeInsets.all(20),
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.question_answer_outlined,
              text: 'FAQ',
            ),
            GButton(
              icon: Icons.person_2_outlined,
              text: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  // Widget _getContent() {
  //   switch (_selectedIndex) {
  //     case 0:
  //       return const Center(child: Text('Home'));
  //     case 1:
  //       return const Center(child: Text('FAQ'));
  //     case 2:
  //       return const Center(child: Text('Profile'));
  //     default:
  //       return const Center(child: Text('Home'));
  //   }
  // }
}
