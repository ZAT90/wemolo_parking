
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemolo_parking/core/constants/navigation_constants.dart';
import 'package:wemolo_parking/core/di/injection.dart';
import 'package:wemolo_parking/core/routes/generated_routes.dart';
import 'package:wemolo_parking/core/utils/simple_bloc_observer.dart';

void main() {
  setupInjection();
  Bloc.observer = SimpleBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        initialRoute: NavigationConstants.home,
        onGenerateRoute: AppRoutes.generateRoute,
      ),
    );
  }
}
