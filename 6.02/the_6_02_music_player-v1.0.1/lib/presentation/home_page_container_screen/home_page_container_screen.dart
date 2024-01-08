import 'notifier/home_page_container_notifier.dart';
import 'package:flutter/material.dart';
import 'package:the_6_02_music_player/core/app_export.dart';
import 'package:the_6_02_music_player/presentation/favorites_page/favorites_page.dart';
import 'package:the_6_02_music_player/presentation/home_page/home_page.dart';
import 'package:the_6_02_music_player/presentation/top_playlists_page/top_playlists_page.dart';
import 'package:the_6_02_music_player/widgets/custom_bottom_bar.dart';

class HomePageContainerScreen extends ConsumerStatefulWidget {
  const HomePageContainerScreen({Key? key}) : super(key: key);

  @override
  HomePageContainerScreenState createState() => HomePageContainerScreenState();
}

// ignore_for_file: must_be_immutable
class HomePageContainerScreenState
    extends ConsumerState<HomePageContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(context, routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Top:
        return AppRoutes.topPlaylistsPage;
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesPage;
      case BottomBarEnum.Search:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.topPlaylistsPage:
        return TopPlaylistsPage();
      case AppRoutes.favoritesPage:
        return FavoritesPage();
      default:
        return DefaultWidget();
    }
  }
}
