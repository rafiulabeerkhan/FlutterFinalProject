import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:spare/Employees.dart/Client_form.dart';
import 'package:spare/Employees.dart/Employee_form.dart';
import 'package:spare/view/home_view.dart';
import 'package:spare/view/widget/innerlanding/drawer_list.dart';

class OfficeView extends StatefulWidget {
  const OfficeView({super.key});

  @override
  State<OfficeView> createState() => _OfficeViewState();
}

class _OfficeViewState extends State<OfficeView> {
  int _selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 219, 226, 233),
        appBar: AppBar(
          title: Text(_navbarPages[_selectedTabIndex].title),
          backgroundColor: Color.fromARGB(255, 235, 165, 186),
          elevation: 2,
          shadowColor: Colors.blueAccent,
          actions: [
            IconButton(
                onPressed: () => {const EmployeeDetails()},
                icon: const Icon(Icons.add)),
          ],
        ),
        body: _navbarPages[_selectedTabIndex].body,
        bottomNavigationBar: SalomonBottomBar(
            currentIndex: _selectedTabIndex,
            selectedItemColor: const Color(0xff6200ee),
            unselectedItemColor: Colors.blueGrey,
            onTap: (index) {
              setState(() {
                _selectedTabIndex = index;
              });
            },
            items: _navBarItems),
        drawer: Drawer(
          shadowColor: Colors.blueAccent,
          elevation: 2,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              // --------------------------- Header
              OfficeDrawerList(),
            ],
          ),
        ),
      ),
    );
  }
}

const List<NavbarPage> _navbarPages = [
  NavbarPage(
    title: "Home",
    body: HomeView(),
  ),
  NavbarPage(
    title: "Employees",
    body: EmployeeDetails(
      key: null,
    ),
  ),
  NavbarPage(title: "Client", body: ClientDetials(key: null)),
  NavbarPage(
    title: "Settings",
    body: const Text("setting"),
  ),
];

class NavbarPage {
  final String title;
  final Widget body;
  const NavbarPage({
    required this.title,
    required this.body,
  });
}

final _navBarItems = [
  SalomonBottomBarItem(
    icon: const Icon(Icons.home),
    title: const Text("Home"),
    selectedColor: Color.fromARGB(255, 11, 214, 163),
  ),
  SalomonBottomBarItem(
    icon: const Icon(Icons.fact_check),
    title: const Text("Employees"),
    selectedColor: Color.fromARGB(255, 11, 214, 163),
  ),
  SalomonBottomBarItem(
      icon: const Icon(Icons.receipt),
      title: const Text("Clients"),
      selectedColor: const Color.fromARGB(255, 11, 214, 163)),
  SalomonBottomBarItem(
    icon: const Icon(Icons.receipt_long_sharp),
    title: const Text("Invoie"),
    selectedColor: Color.fromARGB(255, 11, 214, 163),
  ),
];
