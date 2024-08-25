import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  final logic = Get.put(SettingLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle('Account'),
          _buildListTile(
            Icons.person,
            'Account Info',
                () {
              // Navigate to account info page
            },
          ),
          _buildListTile(
            Icons.lock,
            'Change Password',
                () {
              // Navigate to change password page
            },
          ),
          const Divider(),
          _buildSectionTitle('Privacy'),
          _buildListTile(
            Icons.security,
            'Privacy Settings',
                () {
              // Navigate to privacy settings page
            },
          ),
          _buildListTile(
            Icons.block,
            'Blocked Accounts',
                () {
              // Navigate to blocked accounts page
            },
          ),
          const Divider(),
          _buildSectionTitle('Notifications'),
          _buildListTile(
            Icons.notifications,
            'Notification Settings',
                () {
              // Navigate to notification settings page
            },
          ),
          _buildListTile(
            Icons.email,
            'Email Preferences',
                () {
              // Navigate to email preferences page
            },
          ),
          const Divider(),
          _buildSectionTitle('Help'),
          _buildListTile(
            Icons.help,
            'Help Center',
                () {
              // Navigate to help center page
            },
          ),
          _buildListTile(
            Icons.feedback,
            'Feedback',
                () {
              // Navigate to feedback page
            },
          ),
          const Divider(),
          _buildListTile(
            Icons.logout,
            'Log Out',
                () {
              // Handle logout
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon, size: 24),
      title: Text(title),
      onTap: onTap,
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
    );
  }
}