import 'package:flutter/material.dart';

import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:provider/provider.dart';
import 'package:watch_app/provider/dark_theme.dart';
import 'package:watch_app/widgets/custom_modal.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  // Current index
  int _selectedIndex = 0;

  // Items
  @override
  Widget build(BuildContext context) {
    bool isDarkMode =
        Provider.of<DarkThemeNotifier>(context, listen: false).isDarkMode;

    return FlashyTabBar(
      selectedIndex: _selectedIndex,
      backgroundColor: Colors.black.withOpacity(0),
      showElevation: false,
      onItemSelected: (index) => setState(
        () {
          _selectedIndex = index;
          if (_selectedIndex == 2) {
            showModal(context);
          }
          if (_selectedIndex == 3) {
            changeTheme(isDarkMode ? false : true, context);
          }
        },
      ),
      items: [
        FlashyTabBarItem(
          activeColor: const Color(0XFF33AA9E),
          inactiveColor: const Color(0XFF33AA9E).withOpacity(0.4),
          icon: const Icon(Icons.home),
          title: const Text('Home'),
        ),
        FlashyTabBarItem(
            activeColor: const Color(0XFF3BA3FF),
            inactiveColor: const Color(0XFF3BA3FF).withOpacity(0.4),
            icon: const Icon(Icons.stacked_line_chart),
            title: const Text('Statistics')),
        FlashyTabBarItem(
            activeColor: const Color(0XFF33AA9E),
            inactiveColor: const Color(0XFF33AA9E),
            icon: const Icon(Icons.add),
            title: const Text('Add')),
        FlashyTabBarItem(
          activeColor: const Color(0XFFBF8FFF),
          inactiveColor: const Color(0XFFBF8FFF).withOpacity(0.4),
          icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
          title: Text(isDarkMode ? 'Light' : 'Dark'),
        ),
        FlashyTabBarItem(
          activeColor: const Color(0XFFED975E),
          inactiveColor: const Color(0XFFED975E).withOpacity(0.4),
          icon: const Icon(Icons.settings),
          title: const Text('Settings'),
        ),
      ],
    );
  }

  void changeTheme(bool value, BuildContext context) {
    ///Call setDarkMode method inside our Settings ChangeNotifier class to
    ///Notify all the listeners of the change.
    Provider.of<DarkThemeNotifier>(context, listen: false).setDarkMode(value);
  }
}
