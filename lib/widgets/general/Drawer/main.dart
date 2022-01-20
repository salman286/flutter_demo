import 'package:flutter/material.dart';
import 'package:my_app/widgets/general/Drawer/item.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.all(25),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(
                    0x33707070,
                  ),
                ),
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/images/avatar.png'),
                  radius: 32,
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Text(
                      "Hassan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      "Hiring Manager",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          DrawerItem(
            label: "Profile",
            onPress: () {
              Navigator.of(context).pushNamed('/profile');
            },
          ),
          DrawerItem(
            label: "Change Number",
            onPress: () {},
          ),
          DrawerItem(
            label: "About Us",
            onPress: () {},
          ),
          DrawerItem(
            label: "Terms & Conditions",
            onPress: () {},
          ),
          DrawerItem(
            label: "Privacy Policy",
            onPress: () {},
          ),
          DrawerItem(
            label: "Logout",
            onPress: () {
              Navigator.of(context).pushNamed('/');
            },
          ),
        ],
      ),
    );
  }
}
