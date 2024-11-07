import 'package:go_router/go_router.dart';
import 'package:myapp/features/authentication/presentation/pages/login_page.dart';
import 'package:myapp/features/home/presentation/pages/home_page.dart';
import 'package:myapp/features/splash/presentation/pages/splash_page.dart';

final GoRouter routeConfig = GoRouter(
  initialLocation: '/',  // Halaman pertama yang ditampilkan
  routes: [
    // Rute untuk halaman Splash Screen
    GoRoute(
      path: '/',
      builder: (context, state) => SplashPage(),
    ),
    //login route
    GoRoute(path: '/auth',
    builder:(context,state)=>LoginPage(),),
    //home route
    GoRoute(path: '/home',
    builder: (context,state)=>HomePage(),)
   
  ],
);