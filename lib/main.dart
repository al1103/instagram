import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:network_social/common/routers/app_route.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // If you have any initialization logic, such as Firebase initialization, do it here
  // Example: await Firebase.initializeApp();

  runApp(const ProviderScope(child: App()));
}

final appRouter = AppRouter();

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: appRouter
          .config(), // Ensure that appRouter.config() returns a valid RouterConfig object
      debugShowCheckedModeBanner: false, // Optional: remove the debug banner
      theme: ThemeData.light(), // Optional: customize your app's theme
    );
  }
}
