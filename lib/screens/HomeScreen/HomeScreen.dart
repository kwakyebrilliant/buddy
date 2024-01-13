import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal[700],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 35.0,
                width: 35.0,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/boy.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //search post here
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width - 10.0,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF17203A).withOpacity(0.3),
                          blurRadius: 7,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        hintText: 'Search posts',
                        contentPadding: const EdgeInsets.all(
                          10.0,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        fillColor: Colors.grey[300],
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                          child: Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Icon(
                              Icons.search_rounded,
                              color: Colors.grey[300],
                              size: 20.0,
                            ),
                          ),
                        ),
                        prefixIconConstraints: const BoxConstraints(
                            maxHeight: 50.0, maxWidth: 50.0),
                        prefixIconColor: Colors.grey[300],
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            //posts from buddies
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20.0),
              child: Container(
                height: 60.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    //buddy post 1 here
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/girl.jpeg'),
                      ),
                    ),

                    //buddy post 2
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/p1.jpg'),
                      ),
                    ),

                    //buddy post 3
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/p2.jpg'),
                      ),
                    ),

                    //buddy post 4
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/p3.jpeg'),
                      ),
                    ),

                    //buddy post 5
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    //buddy post 6
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/p4.jpeg'),
                      ),
                    ),

                    //buddy post 7
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('assets/images/p5.jpg'),
                      ),
                    ),

                    //buddy post 8
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: const Icon(
                          Icons.person,
                          size: 40.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            //buddies post container
            Padding(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //post 1 from buddy
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        border: const Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: const Color(0xFF17203A).withOpacity(0.3),
                        //     offset: const Offset(2, 5),
                        //     blurRadius: 10.0,
                        //   ),
                        // ],
                      ),
                      child: Column(
                        children: [
                          //profile, name and time here
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 15.0, bottom: 15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //image here
                                const Padding(
                                  padding: EdgeInsets.only(right: 15.0),
                                  child: CircleAvatar(
                                    radius: 25.0,
                                    backgroundImage:
                                        AssetImage('assets/images/p1.jpg'),
                                  ),
                                ),

                                //name and time
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Kwaku Ananse',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      '44m ago',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //image here
                          Container(
                            height: 300.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/girl.jpeg',
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),

                          //comments and bookmarks
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15.0, left: 15.0, bottom: 15.0),
                            child: Row(
                              children: [
                                //comments here
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.comment_outlined,
                                        size: 17.0,
                                      ),
                                      Text(
                                        '4',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                //bookmarks here
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.bookmarks_outlined,
                                      size: 17.0,
                                    ),
                                    Text(
                                      '16',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //post 2 from buddy
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: const Color(0xFF17203A).withOpacity(0.3),
                          //     offset: const Offset(2, 5),
                          //     blurRadius: 10.0,
                          //   ),
                          // ],
                        ),
                        child: Column(
                          children: [
                            //profile, name and time here
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //image here
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: CircleAvatar(
                                      radius: 25.0,
                                      backgroundImage:
                                          AssetImage('assets/images/p3.jpeg'),
                                    ),
                                  ),

                                  //name and time
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Mr. Rabbit',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '1hr ago',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //image here
                            Container(
                              height: 300.0,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/p3.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),

                            //comments and bookmarks
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, left: 15.0, bottom: 15.0),
                              child: Row(
                                children: [
                                  //comments here
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.comment_outlined,
                                          size: 17.0,
                                        ),
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //bookmarks here
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.bookmarks_outlined,
                                        size: 17.0,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //post 3 from buddy
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: const Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: const Color(0xFF17203A).withOpacity(0.3),
                          //     offset: const Offset(2, 5),
                          //     blurRadius: 10.0,
                          //   ),
                          // ],
                        ),
                        child: Column(
                          children: [
                            //profile, name and time here
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, bottom: 15.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  //image here
                                  const Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: CircleAvatar(
                                      radius: 25.0,
                                      backgroundImage:
                                          AssetImage('assets/images/boy.jpeg'),
                                    ),
                                  ),

                                  //name and time
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Agya Amoah',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        '1hr ago',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //image here
                            Container(
                              height: 300.0,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image: const DecorationImage(
                                  image: AssetImage(
                                    'assets/images/p7.jpeg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),

                            //comments and bookmarks
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 15.0, left: 15.0, bottom: 15.0),
                              child: Row(
                                children: [
                                  //comments here
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Row(
                                      children: [
                                        const Icon(
                                          Icons.comment_outlined,
                                          size: 17.0,
                                        ),
                                        Text(
                                          '4',
                                          style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.grey[800],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  //bookmarks here
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.bookmarks_outlined,
                                        size: 17.0,
                                      ),
                                      Text(
                                        '16',
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.grey[800],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
