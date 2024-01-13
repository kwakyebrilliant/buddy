import 'package:buddy/screens/MyProfileScreen/MyProfileScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({Key? key}) : super(key: key);

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  final List<String> imageUrls = [
    "assets/images/boy.jpeg",
    "assets/images/girl.jpeg",
    "assets/images/p1.jpg",
    "assets/images/p2.jpg",
    "assets/images/p3.jpeg",
    "assets/images/p4.jpeg",
    "assets/images/p5.jpg",
    "assets/images/p6.png",
    "assets/images/p7.jpeg",
    "assets/images/p8.jpeg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.teal[600],
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: const Icon(
                      Icons.add,
                      size: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Media',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MyProfileScreen()));
                },
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          // Media section
          Expanded(
            child: MasonryGridView.builder(
              itemCount: 10,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(imageUrls[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
