import 'package:auto_route/auto_route.dart';
import 'package:network_social/common/routers/router_patch.dart';
import 'package:network_social/modules/auth/presentation/page/sign_in.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes {
    return [
      AutoRoute(
        page: SignInRoute.page,
        path: RoutePath.signIn,
        fullscreenDialog: true,
      ),
      RedirectRoute(path: '*', redirectTo: '/'),
    ];
  }
}
