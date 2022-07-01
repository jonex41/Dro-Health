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
import 'package:flutter/material.dart' as _i11;

import '../data/models/drug_model.dart' as _i12;
import '../Pages/cart/view/cart_screen.dart' as _i9;
import '../Pages/category/view/category_screen.dart' as _i8;
import '../Pages/community/view/community_screen.dart' as _i6;
import '../Pages/detail/view/detail_screen.dart' as _i10;
import '../Pages/doctors/doctors_screen.dart' as _i4;
import '../Pages/home/view/home_screen.dart' as _i3;
import '../Pages/pharmacy/view/pharmacy_screen.dart' as _i5;
import '../Pages/profile/view/profile_screen.dart' as _i7;
import 'tab_page.dart' as _i1;

class RootRouter extends _i2.RootStackRouter {
  RootRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    TabRoute.name: (routeData) {
      return _i2.MaterialPageX<String>(
          routeData: routeData, child: const _i1.TabPage());
    },
    CategoryRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    CartRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
    },
    DetailRouter.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.EmptyRouterPage());
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
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i8.CategoryScreen(key: args.key));
    },
    CartRoute.name: (routeData) {
      final args =
          routeData.argsAs<CartRouteArgs>(orElse: () => const CartRouteArgs());
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: _i9.CartScreen(key: args.key));
    },
    DetailRoute.name: (routeData) {
      final args = routeData.argsAs<DetailRouteArgs>();
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.DetailScreen(key: args.key, model: args.model));
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
        _i2.RouteConfig(CategoryRouter.name, path: 'Category', children: [
          _i2.RouteConfig(CategoryRoute.name,
              path: '', parent: CategoryRouter.name)
        ]),
        _i2.RouteConfig(CartRouter.name, path: 'Cart', children: [
          _i2.RouteConfig(CartRoute.name, path: '', parent: CartRouter.name)
        ]),
        _i2.RouteConfig(DetailRouter.name, path: 'Detail', children: [
          _i2.RouteConfig(DetailRoute.name, path: '', parent: DetailRouter.name)
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
class CategoryRouter extends _i2.PageRouteInfo<void> {
  const CategoryRouter({List<_i2.PageRouteInfo>? children})
      : super(CategoryRouter.name, path: 'Category', initialChildren: children);

  static const String name = 'CategoryRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class CartRouter extends _i2.PageRouteInfo<void> {
  const CartRouter({List<_i2.PageRouteInfo>? children})
      : super(CartRouter.name, path: 'Cart', initialChildren: children);

  static const String name = 'CartRouter';
}

/// generated route for
/// [_i2.EmptyRouterPage]
class DetailRouter extends _i2.PageRouteInfo<void> {
  const DetailRouter({List<_i2.PageRouteInfo>? children})
      : super(DetailRouter.name, path: 'Detail', initialChildren: children);

  static const String name = 'DetailRouter';
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

/// generated route for
/// [_i8.CategoryScreen]
class CategoryRoute extends _i2.PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({_i11.Key? key})
      : super(CategoryRoute.name, path: '', args: CategoryRouteArgs(key: key));

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i9.CartScreen]
class CartRoute extends _i2.PageRouteInfo<CartRouteArgs> {
  CartRoute({_i11.Key? key})
      : super(CartRoute.name, path: '', args: CartRouteArgs(key: key));

  static const String name = 'CartRoute';
}

class CartRouteArgs {
  const CartRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'CartRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i10.DetailScreen]
class DetailRoute extends _i2.PageRouteInfo<DetailRouteArgs> {
  DetailRoute({_i11.Key? key, required _i12.DrugModel model})
      : super(DetailRoute.name,
            path: '', args: DetailRouteArgs(key: key, model: model));

  static const String name = 'DetailRoute';
}

class DetailRouteArgs {
  const DetailRouteArgs({this.key, required this.model});

  final _i11.Key? key;

  final _i12.DrugModel model;

  @override
  String toString() {
    return 'DetailRouteArgs{key: $key, model: $model}';
  }
}
