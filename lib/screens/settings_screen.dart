import 'package:assessment/utils/utils.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff15151f),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top + 60),
            const Text(
              'Settings',
              style: TextStyle(
                letterSpacing: 1.5,
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const CustomSettingsContainer(
                      iconData: Icons.lock_outlined,
                      text: 'Change Password',
                    ),
                    const SizedBox(height: 20),
                    const CustomSettingsContainer(
                      iconData: Icons.email_outlined,
                      text: 'Update Email',
                    ),
                    const SizedBox(height: 20),
                    const CustomSettingsContainer(
                      iconData: Icons.alternate_email_outlined,
                      text: 'Update Username',
                    ),
                    const SizedBox(height: 20),
                    CustomSettingsContainer(
                      iconData: Icons.logout_outlined,
                      iconColor: Colors.red[400],
                      text: 'Log out',
                      textColor: Colors.red[400],
                      chevronColor: Colors.red[400],
                      onTap: signOut,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomSettingsContainer extends StatelessWidget {
  const CustomSettingsContainer({
    Key? key,
    required this.iconData,
    this.iconColor = Colors.white,
    required this.text,
    this.textColor = Colors.white,
    this.chevronColor = Colors.white,
    this.onTap,
  }) : super(key: key);
  final IconData iconData;
  final Color? iconColor;
  final String text;
  final Color? textColor;
  final Color? chevronColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xff1a1a27),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                children: [
                  Icon(
                    iconData,
                    color: iconColor,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    text,
                    style: TextStyle(
                      color: textColor,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.chevron_right_outlined,
              color: chevronColor,
            )
          ],
        ),
      ),
    );
  }
}
