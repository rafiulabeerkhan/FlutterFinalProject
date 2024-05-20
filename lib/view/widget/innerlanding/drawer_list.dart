import 'package:flutter/material.dart';
import 'package:spare/route.dart';

class OfficeDrawerList extends StatefulWidget {
  const OfficeDrawerList({super.key});

  @override
  State<OfficeDrawerList> createState() => _OfficeDrawerListState();
}

class _OfficeDrawerListState extends State<OfficeDrawerList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.dashboard,
            color: Colors.blueGrey,
          ),
          title: const Text(
            'Home',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 127, 218),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.person,
            color: Colors.blueGrey,
          ),
          title: const Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 127, 218),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, profileRoute);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.menu_book,
            color: Colors.blueGrey,
          ),
          title: const Text(
            'Employees',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 127, 218),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, employeeListRoute);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.markunread,
            color: Colors.blueGrey,
          ),
          title: const Text(
            'Client',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 127, 218),
            ),
          ),
          onTap: () {
            Navigator.pushNamed(context, clientListRoute);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.share,
            color: Colors.blueGrey,
          ),
          title: const Text(
            'Products',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 127, 218),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.star,
            color: Colors.blueGrey,
          ),
          title: const Text(
            'Raw Materials',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 127, 218),
            ),
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.blueGrey,
          ),
          title: const Text(
            'Logout',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 223, 127, 218),
            ),
          ),
          onTap: () async {
            Navigator.popAndPushNamed(context, loginRoute);
          },
        ),
      ],
    );
  }
}
