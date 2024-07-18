import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemolo_parking/core/bloc_utils/bloc_init.dart';
import 'package:wemolo_parking/core/constants/navigation_constants.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/tab/tab_bloc.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/pages/dashboard_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavigationConstants.home:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => dashboardBloc
                        ..add(const DashboardEvent.callingParkingData()),
                    ),
                    BlocProvider(
                      create: (context) => TabBloc(),
                    ),
                  ],
                  child: const LandingScreen(),
                ));
      // case NavigationConstants.comment:
      //   CommentNavArgs commentNavArgs = settings.arguments as CommentNavArgs;
      //   logger.d('commentNavArgs in routes: $commentNavArgs');
      //   return MaterialPageRoute(
      //       builder: (_) => BlocProvider<CommentBloc>(
      //             create: (context) => getIt<CommentBloc>()
      //               ..add(CommentEvent.loadComments(commentNavArgs.post)),
      //             child: CommentsPage(
      //               commentNavArgs: commentNavArgs,
      //             ),
      //           ));
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
