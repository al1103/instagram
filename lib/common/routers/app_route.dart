import 'package:auto_route/auto_route.dart';
import 'package:network_social/common/routers/router_patch.dart';
import 'package:network_social/modules/auth/presentation/page/sign_in.dart';
import 'package:network_social/modules/home/presentation/page/home.dart';
import 'package:network_social/modules/home/presentation/page/login_screen.dart';
import 'package:network_social/modules/home/presentation/page/search.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: LoginRoute.page,
        path: RoutePath.splash,
      ),
      AutoRoute(
        page: HomeRoute.page,
        path: RoutePath.home,
        fullscreenDialog: true,
      ),
      AutoRoute(
        page: SearchRoute.page,
        path: RoutePath.search,
        fullscreenDialog: true,
      ),
      // Removed the duplicate SignInRoute entry
      RedirectRoute(
          path: '*',
          redirectTo: RoutePath.splash), // Redirect to splash or a default page
    ];
  }
}
