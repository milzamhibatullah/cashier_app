import 'package:go_router/go_router.dart';
import 'package:myapp/features/authentication/presentation/pages/login.page.dart';
import 'package:myapp/features/home/presentation/pages/home.page.dart';
import 'package:myapp/features/splash/presentation/pages/splash.page.dart';

final GoRouter routeConfig = GoRouter(
  initialLocation: '/',  // Halaman pertama yang ditampilkan
  routes: [
    // Rute untuk halaman Splash Screen
    GoRoute(
      path: '/',
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(path: '/auth',
    builder:(context,state)=>LoginPage(),),

    GoRoute(path: '/home',
    builder: (context,state)=>HomePage(),)
   
  ],
);