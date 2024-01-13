import 'package:buddy/screens/ChatScreen/ChatScreen.dart';
import 'package:buddy/screens/HomeScreen/HomeScreen.dart';
import 'package:buddy/screens/Media/MediaScreen.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentIndex = 1;

  final List<Widget> _pages = [
    const HomeScreen(),
    const ChatScreen(),
    const MediaScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: _pages[_currentIndex],
      bottomNavigationBar: SafeArea(
        child: Container(
          height: 56.00,
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 64),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: const BorderRadius.all(Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF17203A).withOpacity(0.3),
                offset: const Offset(0, 20),
                blurRadius: 20,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 0;
                  });
                },
                icon: const Icon(Icons.home_rounded),
                color: _currentIndex == 0 ? Colors.teal[500] : Colors.grey[300],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 1;
                  });
                },
                icon: const Icon(Icons.chat_rounded),
                color: _currentIndex == 1 ? Colors.teal[500] : Colors.grey[300],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _currentIndex = 2;
                  });
                },
                icon: const Icon(Icons.album_rounded),
                color: _currentIndex == 2 ? Colors.teal[500] : Colors.grey[300],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
