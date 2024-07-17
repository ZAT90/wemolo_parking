import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemolo_parking/core/utils/logger.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/tab/tab_bloc.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/pages/dashboard-screens/home_screen.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/pages/dashboard-screens/summary_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  late PageController _pageController;
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TabBloc, TabState>(
        
        builder: (context, state) {
          
          return PageView(
            controller: _pageController,
            onPageChanged: (index) {
              context.read<TabBloc>().add(TabEvent.changingTabIndex(index));
            },
            children: [
              HomeScreen(),
              SummaryScreen(),
            ],
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<TabBloc, TabState>(
        builder: (context, state) {
          logger.d('tab bloc');
          state.whenOrNull(getTabIndex: (index) {
            currentIndex = index;
          },);
          return BottomNavigationBar(
            currentIndex: state.whenOrNull(getTabIndex: (index) => index,)?.toInt()??0,
            onTap: (index) {
              _pageController.jumpToPage(index);
              context.read<TabBloc>().add(TabEvent.changingTabIndex(index));
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Homes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.list),
                label: 'Summary',
              ),
            ],
          );
        },
      ),
    );
  }
}
