import 'package:flutter/material.dart';
import 'package:graph_ql_sample/all_countries_screen.dart';
import 'package:graph_ql_sample/filtered_countries_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  void onPageChanged(int? index) {
    _selectedIndex = index ?? 0;
    _pageController.animateToPage(
        curve: Curves.decelerate,
        duration: const Duration(milliseconds: 300),
        index!);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: onPageChanged,
        children: const [AllCountriesScreen(), FilteredCountriesScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: 'Countries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_list_sharp),
            label: 'By UZ and TN',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: onPageChanged,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
