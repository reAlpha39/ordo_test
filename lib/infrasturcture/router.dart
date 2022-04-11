import 'package:go_router/go_router.dart';

import '../app/home_root/pages/home_root.dart';


final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  initialLocation: '/',
  routes: <GoRoute>[
    GoRoute(
      name: 'home_root',
      path: '/',
      builder: (context, state) => const HomeRoot(),
    ),
    GoRoute(
      name: 'product_detail',
      path: '/product_detail',
      builder: (context, state) => const HomeRoot(),
    ),
  ],
);
