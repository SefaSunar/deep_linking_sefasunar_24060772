import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'home_page.dart';
import 'product_detail_page.dart';
import 'error_page.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  initialLocation: '/',
  errorBuilder: (context, state) => const ErrorPage(),

  redirect: (context, state) {
    final uri = state.uri;

    if (state.fullPath == uri.path) {
      return null;


    }

    if (uri.scheme == "myapp") {

      final fullUriString = uri.toString();

      String path = fullUriString.replaceFirst('myapp://', '/');
      path = path.replaceFirst('myapp:/', '/');


      if (path.startsWith('/product/') && path.length > 9) {
        return path;


      }


      return '/404';
    }

    return null;
  },

  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),

    ),

    GoRoute(
      path: '/404',
      builder: (context, state) => const ErrorPage(),
    ),

    GoRoute(
      path: '/product/:id',
      builder: (context, state) {
        final productIdString = state.pathParameters['id'];

        if (productIdString == null || productIdString.isEmpty) {
          return const ErrorPage();
        }

        final productIdInt = int.tryParse(productIdString);

        if (productIdInt == null) {
          return const ErrorPage();
        }

        return ProductDetailPage(productId: productIdString);
      },


    ),

  ],

);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Deep Link Ödevi',
      theme: ThemeData(primarySwatch: Colors.blue),
      routerConfig: _router,

    );



  }
}