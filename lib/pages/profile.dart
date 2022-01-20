import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/general/Drawer/main.dart';
import '../widgets/general/button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MainDrawer(),
        appBar: AppBar(
          title: Text(
            'Profile',
            style: Theme.of(context).textTheme.headline1,
          ),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 20, bottom: 56),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 326),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            child: Image.asset('assets/images/avatar.png'),
                            radius: 32,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Hassan, 29",
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            "UI/UX Designer",
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            "Lahore",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Text(
                            "Hi! My name is Hassan, I’m a UX designer from Lahore. I have been working in industry from past 10 years. As I UX Designer, I measure and optimize applications to improve ease of use.",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          ConstrainedBox(
                            constraints: const BoxConstraints(maxWidth: 286),
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        '3 Years',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                      ),
                                      const SizedBox(height: 9),
                                      Text(
                                        'Experience'.toUpperCase(),
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(
                                    indent: 5,
                                    endIndent: 5,
                                    color: Theme.of(context).primaryColor,
                                    thickness: 2,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        '80k',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                      ),
                                      const SizedBox(height: 9),
                                      Text(
                                        'Expected Salary'.toUpperCase(),
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  VerticalDivider(
                                    indent: 5,
                                    endIndent: 5,
                                    color: Theme.of(context).primaryColor,
                                    thickness: 2,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Full time',
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline4,
                                      ),
                                      const SizedBox(height: 9),
                                      Text(
                                        'Availability'.toUpperCase(),
                                        style: TextStyle(
                                          color: Theme.of(context).primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Button(
                            label: 'Message',
                            onPress: () {
                              print("message");
                            },
                          )
                        ],
                      ),
                    ),
                    const Divider(
                      color: Color(0xFF707070),
                      height: 72,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Employment Details',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 34,
                          ),
                          Wrap(
                            spacing: 25,
                            children: [
                              Wrap(
                                spacing: 8,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/icons/company.svg',
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Text(
                                    'Company',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  )
                                ],
                              ),
                              Wrap(
                                spacing: 8,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/icons/profession.svg',
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Text(
                                    'UI/UX Designer',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  )
                                ],
                              ),
                              Wrap(
                                spacing: 8,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    'assets/images/icons/salary.svg',
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Text(
                                    'Company',
                                    style:
                                        Theme.of(context).textTheme.headline4,
                                  )
                                ],
                              )
                            ],
                          ),
                          const Divider(
                            color: Color(0xFF707070),
                            height: 72,
                          ),
                          Text(
                            'Education',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          Image.asset(
                            'assets/images/certificate-1.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 24,
                            ),
                            color: Theme.of(context).primaryColor,
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 7.0,
                                    ),
                                    child: Text(
                                      "Title",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 7.0,
                                    ),
                                    child: Text(
                                      "Institute",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 7.0,
                                    ),
                                    child: Text(
                                      "Grade",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Image.asset(
                            'assets/images/certificate-1.png',
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 24,
                            ),
                            color: Theme.of(context).primaryColor,
                            child: IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 7.0,
                                    ),
                                    child: Text(
                                      "Title",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 7.0,
                                    ),
                                    child: Text(
                                      "Institute",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    thickness: 2,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 7.0,
                                    ),
                                    child: Text(
                                      "Grade",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 46,
                          ),
                          const Divider(
                            color: Color(0xFF707070),
                          ),
                          const SizedBox(
                            height: 39,
                          ),
                          Text(
                            'Skills'.toUpperCase(),
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 26,
                          ),
                          SizedBox(
                            width: 280,
                            child: Wrap(
                              spacing: 11,
                              runSpacing: 11,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  child: const Text(
                                    'web',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  child: const Text(
                                    'illustration',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  child: const Text(
                                    'graphics',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  child: const Text(
                                    'ui',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  child: const Text(
                                    'interface',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    color: Colors.black,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 10,
                                    horizontal: 15,
                                  ),
                                  child: const Text(
                                    'adobe',
                                    style: TextStyle(
                                      fontSize: 11.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
