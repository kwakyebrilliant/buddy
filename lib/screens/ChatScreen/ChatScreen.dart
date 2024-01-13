import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //chat text here
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Chats',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //profile image here
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 17.0,
                backgroundImage: AssetImage('assets/images/boy.jpeg'),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            //search here
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
                        hintText: 'Search buddies',
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

            //buddies big container
            Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              child: Container(
                child: Column(
                  children: [
                    // 1
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          //buddy profile image
                          const Padding(
                            padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                            child: CircleAvatar(
                              radius: 25.0,
                              backgroundImage:
                                  AssetImage('assets/images/girl.jpeg'),
                            ),
                          ),

                          //name of buddy and message here
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 160.0,
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'John Doe',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text('Lorem Ipsum is simply dummy hhh'),
                                ],
                              ),
                            ),
                          ),

                          //unread chats here
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Container(
                              height: 15.0,
                              width: 15.0,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Text(
                                '',
                                style: TextStyle(
                                  color: Colors.grey[300],
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //2
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/images/p1.jpg'),
                              ),
                            ),

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Chris Tang',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //3
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/images/p2.jpg'),
                              ),
                            ),

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Kwaku Ananse',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //4
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 15.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
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

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Akua Kwakye',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //5
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/images/p3.jpeg'),
                              ),
                            ),

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mr. Rabbit',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //6
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, bottom: 15.0),
                              child: Container(
                                height: 50.0,
                                width: 50.0,
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

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Fred Decoder',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //7
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/images/p4.jpeg'),
                              ),
                            ),

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Lambat Osman',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //8
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/images/p5.jpg'),
                              ),
                            ),

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mends Albert',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //9
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //buddy profile image
                            const Padding(
                              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                              child: CircleAvatar(
                                radius: 25.0,
                                backgroundImage:
                                    AssetImage('assets/images/p6.png'),
                              ),
                            ),

                            //name of buddy and message here
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Container(
                                width:
                                    MediaQuery.of(context).size.width - 160.0,
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Agya Amoah',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text('Lorem Ipsum is simply dummy hhh'),
                                  ],
                                ),
                              ),
                            ),

                            //unread chats here
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Container(
                                height: 15.0,
                                width: 15.0,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(100.0),
                                ),
                                child: Text(
                                  '',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.bold,
                                  ),
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
            ),
          ]),
        ],
      ),
    );
  }
}
