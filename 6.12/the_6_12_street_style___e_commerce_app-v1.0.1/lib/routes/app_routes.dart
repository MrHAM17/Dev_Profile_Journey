import 'package:flutter/material.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/splash_screen/splash_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/home_screen/home_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/menu_screen/menu_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/discover_screen/discover_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/shop_screen/shop_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/favorite_screen/favorite_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/product_screen/product_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/my_order_screen/my_order_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/payment_screen/payment_screen.dart';
import 'package:the_6_12_street_style___e_commerce_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String homeScreen = '/home_screen';

  static const String menuScreen = '/menu_screen';

  static const String discoverScreen = '/discover_screen';

  static const String shopScreen = '/shop_screen';

  static const String favoriteScreen = '/favorite_screen';

  static const String productScreen = '/product_screen';

  static const String myOrderScreen = '/my_order_screen';

  static const String paymentScreen = '/payment_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    homeScreen: (context) => HomeScreen(),
    menuScreen: (context) => MenuScreen(),
    discoverScreen: (context) => DiscoverScreen(),
    shopScreen: (context) => ShopScreen(),
    favoriteScreen: (context) => FavoriteScreen(),
    productScreen: (context) => ProductScreen(),
    myOrderScreen: (context) => MyOrderScreen(),
    paymentScreen: (context) => PaymentScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => SplashScreen(),
  };
}
