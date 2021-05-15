import 'package:flutter/material.dart';
import 'package:hummingsparrowtask/Utils/ScreenRoutes.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
    required this.screenName,
  }) : super(key: key);
  final String screenName;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.teal.shade900,
            ),
          ),
          Expanded(
            flex: 8,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  CustomDrawerItem(
                    onTap: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil(homeScreen, (route) => false),
                    disabled: screenName == homeScreen,
                    title: "Home",
                  ),
                  CustomDrawerItem(
                    onTap: () => Navigator.of(context)
                        .pushNamedAndRemoveUntil(videoScreen, (route) => false),
                    disabled: screenName == videoScreen,
                    title: "Video",
                  ),
                  CustomDrawerItem(
                    onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                        profileScreen, (route) => false),
                    disabled: screenName == profileScreen,
                    title: "Profile",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    Key? key,
    required this.onTap,
    required this.title,
    required this.disabled,
  }) : super(key: key);

  final Function onTap;
  final String title;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: !disabled ? () => onTap() : null,
      child: Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        decoration: disabled
            ? BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.black.withOpacity(0.2))))
            : null,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
