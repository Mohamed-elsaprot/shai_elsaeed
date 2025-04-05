import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

import '../features/about_us/about_us.dart';
import '../features/add_to_cart/view/add_to_cart.dart';
import '../features/cart/view/cart.dart';
import '../features/checkout/view/checkout.dart';
import '../features/home/view/home.dart';
import '../features/prev_orders/view/prev_orders.dart';
import 'design/modal_material_with_page.dart';


abstract class AppRouter {
  static const String addToCart = '/addToCart';
  static const String cart = '/cart';
  static const String aboutUs = '/aboutUs';
  static const String prevOrders = '/prevOrders';
  static const String checkOut = '/checkOut';

  static final GoRouter router = GoRouter(routes: [
    GoRoute(
      path: '/',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const ModalWithMaterialPage(child: Home());
      },
    ),
    GoRoute(
      path: addToCart,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const ModalWithMaterialPage(child: AddToCart());
      },
    ),
    GoRoute(
      path: cart,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const ModalWithMaterialPage(child: Cart());
      },
    ),
    GoRoute(
      path: aboutUs,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const ModalWithMaterialPage(child: AboutUs());
      },
    ),
    GoRoute(
      path: checkOut,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const ModalWithMaterialPage(child: Checkout());
      },
    ),
    GoRoute(
      path: prevOrders,
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const ModalWithMaterialPage(child: PrevOrders());
      },
    ),
  ]);
}
