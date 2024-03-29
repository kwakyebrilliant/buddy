import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_left_rounded,
            color: Colors.black,
            size: 50.0,
          ),
        ),
        centerTitle: false,
        title: Container(
          child: const Text(
            'Settings',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              //Top cards here
              Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, left: 15.0, right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 110.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF17203A).withOpacity(0.3),
                            offset: const Offset(2, 5),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 25.0),
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Account',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //themes here
                    Container(
                      height: 110.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF17203A).withOpacity(0.3),
                            offset: const Offset(2, 5),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 25.0),
                              child: Icon(
                                Icons.toggle_on_rounded,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Themes',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //notifications
                    Container(
                      height: 110.0,
                      width: 110.0,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(16.0),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFF17203A).withOpacity(0.3),
                            offset: const Offset(2, 5),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: const Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 25.0),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.black,
                                size: 30,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                              child: Text(
                                'Notification',
                                style: TextStyle(
                                  color: Colors.black,
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

              //Profile items here
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, left: 15.0, right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(16.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xFF17203A).withOpacity(0.3),
                        offset: const Offset(2, 5),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      //bookmarks here
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.bookmark_added_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Bookmarks',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      //faqs here
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.newspaper_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'FAQs',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      //about here
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.info_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'About Us',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ],
                        ),
                      ),

                      //contact us here
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 20.0, top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.contact_support_rounded,
                                  color: Colors.black,
                                  size: 30,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'Contact Us',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.arrow_right_rounded,
                              color: Colors.black,
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //logout text here
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Text(
                    'LOGOUT',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
