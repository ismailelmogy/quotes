import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes/core/utils/app_strings.dart';
import 'package:quotes/features/random_quote/presentation/cubit/random_quote_cubit.dart';
import '../../features/random_quote/presentation/screens/quote_screen.dart';
import 'package:quotes/injection_container.dart' as di;

class Routes {
  static const String initialRoute = '/';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: ((context) {
          return BlocProvider(
            create: ((context) => di.sl<RandomQuoteCubit>()),
            child: const QuoteScreen(),
          );
        }));

      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(
        builder: ((context) => const Scaffold(
              body: Center(
                child: Text(AppStrings.noRouteFound),
              ),
            )));
  }
}
