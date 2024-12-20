import 'package:go_router/go_router.dart';
import 'package:go_router_git/pages/home.dart';
import 'package:go_router_git/pages/page_not_found.dart';
import 'package:go_router_git/pages/parent.dart';
import 'package:go_router_git/pages/profile.dart';
import 'package:go_router_git/pages/reels.dart';
import 'package:go_router_git/pages/search.dart';

final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const Parent(),
      ),

      // simple routing
      GoRoute(
        path: '/home',
        builder: (context, state) => const Home(),
      ),

      // routing by passing single value
      GoRoute(
        path: '/search/:searchTitle',
        builder: (context, state) {
          final String searchTitle = state.pathParameters['searchTitle']!;
          return Search(searchTitle: searchTitle);
        },
      ),

      GoRoute(
        path: '/profile',
        builder: (context, state) => const Profile(),
      ),

      // pass multiple values :: [object passing || extra parameter]
      GoRoute(
        path: '/reels',
        builder: (context, state) {
          final reels = state.extra as List<Map<String, dynamic>>;
          return Reels(reels: reels);
        },
      ),
    ],
    errorBuilder: (context, state) => PageNotFound());
