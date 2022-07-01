import 'package:auto_route/auto_route.dart';
import 'package:dex_app/Pages/cart/view/cart_screen.dart';

import 'package:dex_app/Router/tab_page.dart';

import '../Pages/category/view/category_screen.dart';
import '../Pages/community/view/community_screen.dart';
import '../Pages/detail/view/detail_screen.dart';
import '../Pages/doctors/doctors_screen.dart';
import '../Pages/home/view/home_screen.dart';
import '../Pages/pharmacy/view/pharmacy_screen.dart';
import '../Pages/profile/view/profile_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    // app stack
    AutoRoute<String>(
      path: '/',
      page: TabPage,
      // guards: [AuthGuard],
      children: [
        AutoRoute(
          path: 'Home',
          page: EmptyRouterPage,
          name: 'HomeTab',
          initial: true,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: HomeScreen,
            ),
            /*  AutoRoute(
              path: ':detail',
              page: ColorDetailPage,
              // fullscreenDialog: true,
              // meta: {'hideBottomNav': true},
            ), */
          ],
        ),
        AutoRoute(
          path: 'doctor',
          page: EmptyRouterPage,
          name: 'DoctorTab',
          initial: true,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: DoctorScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'Pharmacy',
          page: EmptyRouterPage,
          name: 'PharmacyTab',
          initial: true,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: PharmacyScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'Community',
          page: EmptyRouterPage,
          name: 'CummunityTab',
          initial: true,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: CommunityScreen,
            ),
          ],
        ),
        AutoRoute(
          path: 'Profile',
          page: EmptyRouterPage,
          name: 'ProfileTab',
          initial: true,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: ProfileScreen,
            ),
          ],
        ),
      ],
    ),

    AutoRoute(
      path: 'Category',
      page: EmptyRouterPage,
      name: 'CategoryRouter',
      initial: true,
      maintainState: true,
      children: [
        AutoRoute(
          path: '',
          page: CategoryScreen,
        ),
      ],
    ),

    AutoRoute(
      path: 'Cart',
      page: EmptyRouterPage,
      name: 'CartRouter',
      initial: true,
      maintainState: true,
      children: [
        AutoRoute(
          path: '',
          page: CartScreen,
        ),
      ],
    ),

    AutoRoute(
      path: 'Detail',
      page: EmptyRouterPage,
      name: 'DetailRouter',
      initial: true,
      maintainState: true,
      children: [
        AutoRoute(
          path: '',
          page: DetailScreen,
        ),
      ],
    ),
    //userDataRoutes,
    // auth
    //  AutoRoute(page: SalvagePage, path: '/login'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $RootRouter {}
