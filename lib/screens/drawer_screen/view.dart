import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../history_screen/view.dart';
import '../home_screen/view.dart';
import '../log_out/view.dart';
import '../message_screen/view.dart';
import '../notifications_screen/view.dart';
import '../person/view.dart';
import '../setting/view.dart';
import 'logic.dart';

class Drawer_screenPage extends StatelessWidget {
  Drawer_screenPage({super.key});

  final logic = Get.put(Drawer_screenLogic());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: 300, // Set a fixed width for the drawer
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Malik Adrees"),
              accountEmail: Text("malikAdrees@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/img.jpg'),
              ),
              otherAccountsPictures: [
                CircleAvatar(child: Icon(Icons.person)),
              ],
            ),
            _brightness(
                Icons.home, "Home", () => Get.off(() => HomeScreen())),
            _buildDrawerItem(
                Icons.brightness_2_outlined,("Brightness_and_Dark"),
                    () {
                  final themeMode = Get.isDarkMode ? ThemeMode.light : ThemeMode.dark;
                  Get.changeThemeMode(themeMode);
                }
            ),
            _buildDrawerItem(Icons.notifications, "Notifications", () {
              Get.to(
                () => Notifications_screenPage(), // Your destination screen
                transition: Transition.rightToLeftWithFade,
                // Choose your animation
                duration: const Duration(milliseconds: 500), // Animation speed
              );
            }),
            _buildDrawerItem(Icons.mail_outline, "Messages", () {
              Get.to(
                () => Message_screenPage(),
                transition: Transition.rightToLeftWithFade,
                // Choose your animation
                duration: const Duration(milliseconds: 500),
              );
            }),
            _buildDrawerItem(Icons.history, "History", () {
              Get.to(
                () => History_screenPage(),
                transition: Transition.rightToLeftWithFade,
                // Choose your animation
                duration: const Duration(milliseconds: 500),
              );
            }),
            _buildDrawerItem(Icons.bookmark, "Bookmark", () {
            }),
            _buildDrawerItem(Icons.list, "Lists", () {}),
            _buildDrawerItem(Icons.person_outline, "Profile", () {
              Get.to(
                () => const PersonPage(),
                transition: Transition.rightToLeftWithFade,
                // Choose your animation
                duration: const Duration(milliseconds: 500),
              );
            }),
            _buildDrawerItem(Icons.more_horiz, "More", () {
              Get.to(
                () => const MoreScreen(),
                transition: Transition.rightToLeftWithFade,
                // Choose your animation
                duration: const Duration(milliseconds: 500),
              );
            }),
            _buildDrawerItem(Icons.logout, "Logout", () {
              Get.to(
                () => Log_outPage(),
                transition: Transition.rightToLeftWithFade,
                // Choose your animation
                duration: const Duration(milliseconds: 500),
              );
            }),
          ],
        ),
      ),
    );
  }
}
_buildDrawerItem(IconData icon, String title, VoidCallback onTap) {
  return ListTile(
    leading: Icon(icon),
    title: Text(title),
    onTap: () {
      // Show the confirmation dialog
      Get.dialog(
        AlertDialog(
          title: Text('Confirm'),
          content: Text('Do you want to switch to $title?'),
          actions: [
            TextButton(
              onPressed: () {
                // Cancel the action
                Get.back(); // Close the dialog
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                Get.back(); // Close the dialog
                onTap(); // Execute the original onTap callback
              },
              child: const Text('Yes'),
            ),
          ],
        ),
      );
    },
  );
}

Widget _brightness(IconData icon, String title, VoidCallback onTap) {
  return ListTile(
    leading: Icon(icon, size: 30),
    title: Text(title),
    onTap: onTap,
    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
  );
}

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900], // Twitter's blue
        title: const Text(
          'More',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          // Settings
          _buildMoreItem(
            Icons.settings,
            'Settings',
            () {
              // Navigate to the Settings screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingPage(),
                ),
              );
            },
          ),

          // Help Center
          _buildMoreItem(
            Icons.help_center,
            'Help Center',
            () {
              // Navigate to the Help Center screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HelpCenterScreen(),
                ),
              );
            },
          ),

          // Privacy Policy
          _buildMoreItem(
            Icons.privacy_tip,
            'Privacy Policy',
            () {
              // Navigate to the Privacy Policy screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyScreen(),
                ),
              );
            },
          ),

          // About
          _buildMoreItem(
            Icons.info,
            'About',
            () {
              // Navigate to the About screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
          ),

          // Logout (you can use the TwitterLogoutScreen from the previous response)
          _buildMoreItem(
            Icons.logout,
            'Log Out',
            () {
              // Navigate to the Logout screen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Log_outPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMoreItem(IconData icon, String title, Function onTap) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title),
      onTap: () => onTap(), // Call the provided function on tap
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: const Center(child: Text('Settings Screen')),
    );
  }
}

class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help Center'),
      ),
      body: const Center(child: Text('Help Center Screen')),
    );
  }
}

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Policy'),
      ),
      body: const Center(child: Text('Privacy Policy Screen')),
    );
  }
}

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: const Center(child: Text('About Screen')),
    );
  }
}

// Define a widget for a single tweet
class TweetItem extends StatelessWidget {
  // ... tweet data (author, text, time, etc.)
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User profile image and name
            const Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://example.com/user.jpg"),
                ),
                SizedBox(width: 16),
                Text("User Name",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 16),
                Text("@username"),
              ],
            ),
            // Tweet text
            const SizedBox(height: 8),
            const Text(
              "This is a sample tweet. It's a good idea to keep tweets concise and engaging.",
            ),
            // Actions (like, retweet, reply)
            const SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.repeat),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.comment),
                  onPressed: () {},
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
