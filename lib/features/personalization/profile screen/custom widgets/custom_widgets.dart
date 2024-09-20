import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileDetailTile extends StatelessWidget {
  const ProfileDetailTile(
      {super.key, required this.title, required this.title2});
  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
              flex: 3,
              child: Text(title, style: const TextStyle(color: Colors.grey))),
          Expanded(flex: 5, child: Text(title2)),
          const Expanded(child: Icon(Iconsax.arrow_right_34))
        ],
      ),
    );
  }
}
