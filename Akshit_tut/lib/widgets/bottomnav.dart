import 'package:flutter/material.dart';
import 'package:akshit_tut/widgets/animatedtext.dart';
import 'package:akshit_tut/widgets/dismissable.dart';
import 'package:akshit_tut/widgets/list_grid.dart';
import 'package:akshit_tut/widgets/snackbar.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedindex = 0;
  PageController pageController = PageController();

  // List<Widget> widgets = [
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Add'),
  //   Text('Profile'),
  // ];
  void onTapped(int index) {
    setState(() {
      selectedindex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Bottom Nav')),
      body: PageView(
        controller: pageController,
        children: [
          AnimatedTextWidget(),
          MyDismissableWidget(),
          ListGridView(),
          MySnackBarWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add,
              ),
              label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile'),
        ],
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        onTap: onTapped,
      ),
    );
  }
}