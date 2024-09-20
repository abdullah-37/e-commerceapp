import 'package:e_commerce_app/features/authentication/screens/home_screen/custom_widgets/appbar.dart';
import 'package:e_commerce_app/features/personalization/profile%20screen/custom%20widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
          title: Text(
        'Profile',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
      )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const SizedBox(height: 20),

              // Profile image
              Column(
                children: [
                  const Image(image: AssetImage('assets/logos/user.png')),
                  const SizedBox(height: 20),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change profile picture'))
                ],
              ),
              const SizedBox(height: 10),
              const Divider(),
              const SizedBox(height: 10),

              // Profile information
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Profile Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 14),
              // Profile detail
              const ProfileDetailTile(
                  title: 'Name', title2: 'Muhammad Abdullah'),
              const ProfileDetailTile(
                  title: 'Username', title2: 'abdullah_123ty'),
              // Divider
              const Divider(),
              const SizedBox(height: 10),
              // Personal Infromation
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Personal Information',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 14),
              const ProfileDetailTile(title: 'User ID', title2: '184949'),
              const ProfileDetailTile(
                  title: 'Email', title2: 'abdullah@gmail.com'),
              const ProfileDetailTile(
                  title: 'Phone Number', title2: '123456789'),
              const ProfileDetailTile(title: 'Gender', title2: 'Male'),
              const ProfileDetailTile(
                  title: 'Date of Birth', title2: '25-11-2000'),
            ],
          ),
        ),
      ),
    );
  }
}
