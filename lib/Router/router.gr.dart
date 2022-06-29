// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i8;

import '../Pages/community_page/community_screen.dart' as _i6;
import '../Pages/doctors_page/doctors_screen.dart' as _i4;
import '../Pages/home_page/home_screen.dart' as _i3;
import '../Pages/pharmacy_page/pharmacy_screen.dart' as _i5;
import '../Pages/profile_page/profile_screen.dart' as _i7;
import 'tab_page.dart' as _i1;

class RootRouter extends _i2.RootStackRouter {
  RootRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TabRoute.name: (routeData) {
      return _i2.MaterialPageX<String>(
          routeData: routeData, child: const _i1.TabPage());
    },
    HomeTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    DoctorTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    PharmacyTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    CummunityTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    ProfileTab.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    DoctorRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.DoctorScreen());
    },
    PharmacyRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PharmacyScreen());
    },
    CommunityRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.CommunityScreen());
    },
    ProfileRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfileScreen());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(TabRoute.name, path: '/', children: [
          _i2.RouteConfig('#redirect',
              path: '',
              parent: TabRoute.name,
              redirectTo: 'Home',
              fullMatch: true),
          _i2.RouteConfig(HomeTab.name,
              path: 'Home',
              parent: TabRoute.name,
              children: [
                _i2.RouteConfig(HomeRoute.name, path: '', parent: HomeTab.name)
              ]),
          _i2.RouteConfig(DoctorTab.name,
              path: 'doctor',
              parent: TabRoute.name,
              children: [
                _i2.RouteConfig(DoctorRoute.name,
                    path: '', parent: DoctorTab.name)
              ]),
          _i2.RouteConfig(PharmacyTab.name,
              path: 'Pharmacy',
              parent: TabRoute.name,
              children: [
                _i2.RouteConfig(PharmacyRoute.name,
                    path: '', parent: PharmacyTab.name)
              ]),
          _i2.RouteConfig(CummunityTab.name,
              path: 'Community',
              parent: TabRoute.name,
              children: [
                _i2.RouteConfig(CommunityRoute.name,
                    path: '', parent: CummunityTab.name)
              ]),
          _i2.RouteConfig(ProfileTab.name,
              path: 'Profile',
              parent: TabRoute.name,
              children: [
                _i2.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileTab.name)
              ])
        ]),
        _i2.RouteConfig('*#redirect',
            path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for
/// [_i1.TabPage]
class TabRoute extends _i2.PageRouteInfo<void> {
  const TabRoute({List<_i2.PageRouteInfo>? children})
      : super(TabRoute.name, path: '/', initialChildren: children);

  static const String name = 'TabRoute';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class HomeTab extends _i2.PageRouteInfo<void> {
  const HomeTab({List<_i2.PageRouteInfo>? children})
      : super(HomeTab.name, path: 'Home', initialChildren: children);

  static const String name = 'HomeTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class DoctorTab extends _i2.PageRouteInfo<void> {
  const DoctorTab({List<_i2.PageRouteInfo>? children})
      : super(DoctorTab.name, path: 'doctor', initialChildren: children);

  static const String name = 'DoctorTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class PharmacyTab extends _i2.PageRouteInfo<void> {
  const PharmacyTab({List<_i2.PageRouteInfo>? children})
      : super(PharmacyTab.name, path: 'Pharmacy', initialChildren: children);

  static const String name = 'PharmacyTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CummunityTab extends _i2.PageRouteInfo<void> {
  const CummunityTab({List<_i2.PageRouteInfo>? children})
      : super(CummunityTab.name, path: 'Community', initialChildren: children);

  static const String name = 'CummunityTab';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class ProfileTab extends _i2.PageRouteInfo<void> {
  const ProfileTab({List<_i2.PageRouteInfo>? children})
      : super(ProfileTab.name, path: 'Profile', initialChildren: children);

  static const String name = 'ProfileTab';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.DoctorScreen]
class DoctorRoute extends _i2.PageRouteInfo<void> {
  const DoctorRoute() : super(DoctorRoute.name, path: '');

  static const String name = 'DoctorRoute';
}

/// generated route for
/// [_i5.PharmacyScreen]
class PharmacyRoute extends _i2.PageRouteInfo<void> {
  const PharmacyRoute() : super(PharmacyRoute.name, path: '');

  static const String name = 'PharmacyRoute';
}

/// generated route for
/// [_i6.CommunityScreen]
class CommunityRoute extends _i2.PageRouteInfo<void> {
  const CommunityRoute() : super(CommunityRoute.name, path: '');

  static const String name = 'CommunityRoute';
}

/// generated route for
/// [_i7.ProfileScreen]
class ProfileRoute extends _i2.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
