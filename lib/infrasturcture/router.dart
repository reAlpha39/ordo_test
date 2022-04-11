import 'package:go_router/go_router.dart';
import 'package:ordo_test/app/checkout/pages/checkout_page.dart';
import 'package:ordo_test/app/detail_product/pages/product_detail.dart';

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
      builder: (context, state) => const ProductDetail(),
    ),
    GoRoute(
      name: 'checkout',
      path: '/checkout',
      builder: (context, state) => const CheckoutPage(),
    ),
  ],
);
