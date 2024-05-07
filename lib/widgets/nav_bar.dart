import 'package:ar_app/ui/screens/map/controller.dart';
import 'package:ar_app/ui/screens/map/webview.dart';
import 'package:ar_app/ui/screens/settings/settings.dart';
import 'package:flutter/material.dart';
// import 'package:ar_app/ui/screens/Home/home.dart';
import 'package:ar_app/ui/screens/sample.dart';
import '../ui/screens/Destination/destination.dart';
import '../ui/screens/Home/home.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const DestinationScreen(),
    const SampleScreen(),
    // const WebView(),
    const WebViewContainer(),
    const SettingsScreen(),
    // const SampleScreen(),
  ];

   List<NavItem> createNavItems(BuildContext context) {
    return [
      NavItem(icon: Icons.home, title: AppLocalizations.of(context)!.home),
      NavItem(icon: Icons.castle, title: AppLocalizations.of(context)!.destinations),
      NavItem(icon: Icons.photo_camera, title: AppLocalizations.of(context)!.camera),
      NavItem(icon: Icons.map, title: AppLocalizations.of(context)!.map),
      NavItem(icon: Icons.settings, title: AppLocalizations.of(context)!.settings),
    ];
   }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final navItems = createNavItems(context);
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: navItems.map((item) {
                int index = navItems.indexOf(item);
                return Expanded(
                  child: GestureDetector(
                    onTap: () => _onItemTapped(index),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          item.icon,
                          color: _selectedIndex == index
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                        const SizedBox(height: 5),
                        Flexible(
                          child: Text(
                            item.title,
                            style: TextStyle(
                              color: _selectedIndex == index
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class NavItem {
  final IconData icon;
  final String title;

  NavItem({required this.icon, required this.title});
}
