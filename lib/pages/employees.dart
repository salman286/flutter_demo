import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/widgets/employees/employee.dart';
import 'package:my_app/widgets/general/Drawer/main.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MainDrawer(),
      appBar: AppBar(
        title: SizedBox(
          width: 304,
          height: 31,
          child: TextField(
            style: const TextStyle(
              fontSize: 12,
            ),
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 11.0),
                child: SvgPicture.asset(
                  'assets/images/icons/filters.svg',
                  color: Theme.of(context).primaryColor,
                ),
              ),
              suffixIconConstraints: const BoxConstraints(maxWidth: 32),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 13),
              hintText: "Search who you are looking for",
            ),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: ListView(
          children: const [
            Employee(),
            Employee(),
            Employee(),
            Employee(),
            Employee(),
            Employee(),
            Employee(),
            Employee(),
          ],
        ),
      ),
    );
  }
}
