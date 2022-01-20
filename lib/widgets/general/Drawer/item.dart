import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String label;
  final Function() onPress;
  const DrawerItem({
    Key? key,
    required this.label,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(25, 32, 0, 0),
        width: double.infinity,
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
        child: SizedBox(
          height: 40,
          child: TextButton(
            style: const ButtonStyle(
              alignment: Alignment.centerLeft,
            ),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: onPress,
          ),
        ));
  }
}
