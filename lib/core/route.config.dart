import 'package:go_router/go_router.dart';
import 'package:myapp/features/splash/presentation/pages/splash.page.dart';

final GoRouter routeConfig = GoRouter(
  initialLocation: '/',  // Halaman pertama yang ditampilkan
  routes: [
    // Rute untuk halaman Splash Screen
    GoRoute(
      path: '/',
      builder: (context, state) => SplashPage(),
    ),
   
  ],
);