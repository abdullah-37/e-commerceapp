// listtile of account settings
import 'package:flutter/material.dart';

class AccountSettingTile extends StatelessWidget {
  const AccountSettingTile({
    super.key,
    required this.leadingicon,
    required this.title,
    required this.subtitle,
    this.trailing,
  });
  final Icon leadingicon;
  final String title;
  final String subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingicon,
      title: Text(title, style: const TextStyle(fontWeight: FontWeight.w700)),
      subtitle: Text(subtitle),
      trailing: trailing,
    );
  }
}
