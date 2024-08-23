import 'package:flutter/material.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Cover photo
            Stack(
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/img.jpg'), // Replace with your image asset
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                // Profile image
                const Positioned(
                  left: 20,
                  bottom: -50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('assets/images/img.jpg'), // Replace with your image asset
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            // Profile information
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Malik Adrees", // Replace with dynamic data
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "@malikadrees", // Replace with dynamic data
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Flutter Developer | Tech Enthusiast | Open Source Contributor", // Replace with dynamic data
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16, color: Colors.grey),
                      SizedBox(width: 5),
                      Text("Pakistan", style: TextStyle(color: Colors.grey)), // Replace with dynamic data
                      SizedBox(width: 20),
                      Icon(Icons.link, size: 16, color: Colors.grey),
                      SizedBox(width: 5),
                      Text(
                        "malikadrees.com", // Replace with dynamic data
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "500 ", // Replace with dynamic data
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Following"),
                      SizedBox(width: 20),
                      Text(
                        "1,200 ", // Replace with dynamic data
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Followers"),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(thickness: 1),
            // Tab bar for tweets, replies, media, and likes
            DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  const TabBar(
                    indicatorColor: Colors.blue,
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: "Tweets"),
                      Tab(text: "Tweets & Replies"),
                      Tab(text: "Media"),
                      Tab(text: "Likes"),
                    ],
                  ),
                  SizedBox(
                    height: 500, // Adjust the height according to your needs
                    child: TabBarView(
                      children: [
                        // Replace with your dynamic content
                        _buildTweetsTab(),
                        _buildTweetsTab(),
                        _buildMediaTab(),
                        _buildLikesTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTweetsTab() {
    return ListView.builder(
      itemCount: 10, // Replace with dynamic data
      itemBuilder: (context, index) {
        return const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/profile.jpg'), // Replace with dynamic data
          ),
          title: Text("This is a tweet"), // Replace with dynamic data
          subtitle: Text("2h ago"), // Replace with dynamic data
        );
      },
    );
  }

  Widget _buildMediaTab() {
    return const Center(
      child: Text("Media content goes here"), // Replace with dynamic data
    );
  }

  Widget _buildLikesTab() {
    return const Center(
      child: Text("Liked tweets will appear here"), // Replace with dynamic data
    );
  }
}
