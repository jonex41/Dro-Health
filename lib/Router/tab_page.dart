import 'package:auto_route/auto_route.dart';
import 'package:dex_app/Router/router.gr.dart';
import 'package:dex_app/Utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TabPage extends StatefulWidget {
  const TabPage({
    Key? key,
  }) : super(key: key);

  @override
  TabPageState createState() => TabPageState();
}

class RouteDestination {
  final PageRouteInfo route;
  final IconData icon;
  final String label;

  const RouteDestination({
    required this.route,
    required this.icon,
    required this.label,
  });
}

class TabPageState extends State<TabPage> with TickerProviderStateMixin {
  final destinations = const [
    RouteDestination(
      route: HomeTab(),
      icon: PhosphorIcons.house_simple,
      label: 'Home',
    ),
    RouteDestination(
      route: DoctorTab(),
      icon: PhosphorIcons.user_plus,
      label: 'Doctors',
    ),
    RouteDestination(
      route: PharmacyTab(),
      icon: FontAwesomeIcons.cartPlus,
      label: 'Pharmacy',
    ),
    RouteDestination(
      route: CummunityTab(),
      icon: PhosphorIcons.chat,
      label: 'Community',
    ),
    RouteDestination(
      route: ProfileTab(),
      icon: PhosphorIcons.user_circle,
      label: 'Profile',
    ),
  ];

  void toggleSettingsTap() => setState(() {
        _showSettingsTap = !_showSettingsTap;
      });

  bool _showSettingsTap = true;

  @override
  Widget build(context) {
    // builder will rebuild everytime this router's stack
    // updates
    // we need it to indicate which NavigationRailDestination is active
    return kIsWeb
        ? AutoRouter(builder: (context, child) {
            // we check for active route index by using
            // router.isRouteActive method
            var activeIndex = destinations.indexWhere(
              (d) => context.router.isRouteActive(d.route.routeName),
            );
            // there might be no active route until router is mounted
            // so we play safe
            if (activeIndex == -1) {
              activeIndex = 0;
            }
            return Row(
              children: [
                NavigationRail(
                  destinations: destinations
                      .map((item) => NavigationRailDestination(
                            icon: Icon(item.icon),
                            label: Text(item.label),
                          ))
                      .toList(),
                  selectedIndex: activeIndex,
                  onDestinationSelected: (index) {
                    // use navigate instead of push so you won't have
                    // many useless route stacks
                    context.navigateTo(destinations[index].route);
                  },
                ),
                // child is the rendered route stack
                Expanded(child: child)
              ],
            );
          })
        : AutoTabsRouter.tabBar(
            routes: const [
              HomeTab(),
              DoctorTab(),
              PharmacyTab(),
              CummunityTab(),
              ProfileTab()
            ],
            builder: (context, child, _) {
              return Scaffold(
                body: child,
                bottomNavigationBar:
                    buildBottomNav(context, context.tabsRouter),
              );
            },
          );
  }

  Widget buildBottomNav(BuildContext context, TabsRouter tabsRouter) {
    final hideBottomNav = tabsRouter.topMatch.meta['hideBottomNav'] == true;
    return hideBottomNav
        ? const SizedBox.shrink()
        : BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            selectedItemColor: kAppPrimaryColor,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            selectedLabelStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            unselectedLabelStyle: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
            unselectedItemColor: kUnselectedTabColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  PhosphorIcons.house_simple,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  PhosphorIcons.user_plus,
                ),
                label: 'Doctor',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  FontAwesomeIcons.cartPlus,
                ),
                label: 'Pharmacy',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  PhosphorIcons.chat,
                ),
                label: 'Community',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  PhosphorIcons.user_circle,
                ),
                label: 'Profile',
              ),
            ],
          );
  }
}
