// Custom App Bar

import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helprs/helper_function.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    // required this.icon,
    this.actions,
  });
  final Widget? title;
  // final Icon icon;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AppBar(
        title: title, actions: actions,
        // backgroundColor: const Color.fromARGB(255, 157, 204, 243),
      ),
    );
  }

  @override
  // implement preferredSize
  Size get preferredSize => Size.fromHeight(MyDevice.getAppbarHeight());
}

class AppbarIconwithReddot extends StatelessWidget {
  const AppbarIconwithReddot({
    super.key,
    required this.icon,
  });

  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: icon,
          color: MyHelperfunctions.isDarkmode(context)
              ? Colors.white
              : Colors.black,
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red.withOpacity(0.8),
            ),
            child: const Center(
              child: Text(
                '2',
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AppBarColumnTexts extends StatelessWidget {
  const AppBarColumnTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Good day for shopping',
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.apply(color: const Color.fromARGB(255, 201, 201, 201))),
        Text('Muhammad Abdullah',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.apply(color: const Color.fromARGB(255, 255, 255, 255)))
      ],
    );
  }
}
