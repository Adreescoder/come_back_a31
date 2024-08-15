import 'package:flutter/material.dart';
import '../live_date_time/view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: LiveDateTime(),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Container(
                  width: 200,
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 20),
                      ListTile(
                        leading: Icon(Icons.home, size: 30),
                        title: Text("Home"),
                      ),
                      ListTile(
                        leading: Icon(Icons.search, size: 30),
                        title: Text("Explore"),
                      ),
                      ListTile(
                        leading: Icon(Icons.notifications, size: 30),
                        title: Text("Notifications"),
                      ),
                      ListTile(
                        leading: Icon(Icons.mail_outline, size: 30),
                        title: Text("Messages"),
                      ),
                      ListTile(
                        leading: Icon(Icons.bookmark_border, size: 30),
                        title: Text("Bookmarks"),
                      ),
                      ListTile(
                        leading: Icon(Icons.list, size: 30),
                        title: Text("Lists"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person_outline, size: 30),
                        title: Text("Profile"),
                      ),
                      ListTile(
                        leading: Icon(Icons.more_horiz, size: 30),
                        title: Text("More"),
                      ),

                    ],
                  ),
                ),
                const VerticalDivider(
                  thickness: 2,
                  indent: 2,
                  width: 3,
                  color: Colors.black,
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    color: Colors.white,
                    child: ListView(
                      children: [
                        const Text("Home",style:
                        TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.cyan),),
                        ListTile(
                          leading: const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/img.jpg'),
                          ),
                          title: const Text('Joshua Earle @joshua_earle · 45m'),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Hiking High Dune. Our first adventure on #TheBigTrip! Read all about it at: explorehuper.com/hiking-high-du…'),
                              const SizedBox(height: 10),
                              Image.asset('assets/images/img.jpg'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const VerticalDivider(
                  thickness: 2,
                  indent: 2,
                  width: 3,
                  color: Colors.black,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.white,
                    child: ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: const SizedBox(
                            width: 300,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                ),
                                labelText: 'Enter text',
                                hintText: 'Type something...',
                                contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
        ],
      ),
    );
  }
}
