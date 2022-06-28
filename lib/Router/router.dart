import 'package:auto_route/auto_route.dart';
import 'package:dex_app/Pages/community_page/community_screen.dart';
import 'package:dex_app/Pages/doctors_page/doctors_screen.dart';
import 'package:dex_app/Pages/home_page/home_screen.dart';
import 'package:dex_app/Pages/pharmacy_page/pharmacy_screen.dart';
import 'package:dex_app/Pages/profile_page/profile_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen,Route',
  routes: <AutoRoute>[
    // app stack
    AutoRoute<String>(
      path: '/',
      page: HomeScreen,
      // guards: [AuthGuard],
      children: [
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
            /*  AutoRoute(
              path: ':detail',
              page: ColorDetailPage,
              // fullscreenDialog: true,
              // meta: {'hideBottomNav': true},
            ), */
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
    //userDataRoutes,
    // auth
    //  AutoRoute(page: SalvagePage, path: '/login'),
    RedirectRoute(path: '*', redirectTo: '/'),
  ],
)
class $RootRouter {}
