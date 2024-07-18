import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemolo_parking/core/bloc_utils/bloc_init.dart';
import 'package:wemolo_parking/core/common/ui_items/card.dart';
import 'package:wemolo_parking/core/common/ui_items/misc_ui.dart';
import 'package:wemolo_parking/core/common/ui_items/swiper_buttons.dart';
import 'package:wemolo_parking/core/constants/ui_constants.dart';
import 'package:wemolo_parking/core/utils/logger.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  final AppinioSwiperController controller = AppinioSwiperController();
  List<GetAllParkingLot> parkingList = [];
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<DashboardBloc, DashboardState>(
      // bloc: dashboardBloc,
      listener: (context, state) {
        // state.whenOrNull(
        //   loadParkingData: (getParkingList) {
        //     parkingList = [...getParkingList];
        //   },
        // );
      },
      listenWhen: (previous, current) => current.maybeWhen(
        initial: () => true,
        loadParkingData: (getParkingList) => true,
        orElse: () => false,
      ),
      buildWhen: (previous, current) => current.maybeWhen(
        initial: () => true,
        loadParkingData: (getParkingList) => true,
        orElse: () => false,
      ),
      builder: (context, state) {
       // logger.d('state in home: $state');
        return Scaffold(
            body: state.whenOrNull(
          initial: () => const Center(child: CircularProgressIndicator()),
          loadParkingData: (getParkingList) => getParkingList!.isEmpty
              ? noItemFound(context)
              : renderTinderViewParking(context, getParkingList),
        ));
      },
    );
  }

 

  Widget renderTinderViewParking(
      BuildContext context, List<GetAllParkingLot> getParkingLots) {
    return Column(
      children: [
        // const SizedBox(
        //   height: 50,
        // ),
        SizedBox(
          height: UiConstants(context).screenHeight * .70,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              top: 50,
              bottom: 40,
            ),
            child: AppinioSwiper(
              invertAngleOnBottomDrag: true,
              backgroundCardCount: 3,
              swipeOptions: const SwipeOptions.only(left: true, right: true),
              controller: controller,
              onCardPositionChanged: (
                SwiperPosition position,
              ) {
                //debugPrint('${position.offset.toAxisDirection()}, '
                //    '${position.offset}, '
                //    '${position.angle}');
              },
              onSwipeEnd: (previousIndex, targetIndex, activity) => _swipeEnd(
                  previousIndex, targetIndex, activity, getParkingLots),
              onEnd: _onEnd,
              cardCount: getParkingLots.length,
              cardBuilder: (BuildContext context, int index) {
                return TinderCard(parkingLot: getParkingLots[index]);
              },
            ),
          ),
        ),
        IconTheme.merge(
          data: const IconThemeData(size: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              swipeLeftButton(controller),
              const SizedBox(
                width: 50,
              ),
              swipeRightButton(controller),
            ],
          ),
        )
      ],
    );
  }

  void _swipeEnd(int previousIndex, int targetIndex, SwiperActivity activity,
      List<GetAllParkingLot> parkingLotList) {
    switch (activity) {
      case Swipe():
        logger.d('The card was swiped to the : ${activity.direction}');
        // logger.d('previous index: $previousIndex, target index: $targetIndex');
        if (activity.direction == AxisDirection.right) {
          // logger.d(
          //     'previous index swipe right: $previousIndex, parkinglot: ${parkingLotList[previousIndex]}');
          dashboardBloc.add(DashboardEvent.addToSummary(
              parkinglot:
                  parkingLotList[previousIndex].copyWith(isLiked: true)));
        } else if (activity.direction == AxisDirection.left) {
          // logger.d(
          //     'previous index swipe left: $previousIndex, parkinglot: ${parkingLotList[previousIndex]}');
          dashboardBloc.add(DashboardEvent.addToSummary(
              parkinglot:
                  parkingLotList[previousIndex].copyWith(isLiked: false)));
        }

        break;
      case Unswipe():
        logger.d('A ${activity.direction.name} swipe was undone.');
        // logger.d('previous index: $previousIndex, target index: $targetIndex');
        // logger.d(
        //     'previous index swipe: $previousIndex, parkinglot: ${parkingLot[previousIndex]}');
        break;
      case CancelSwipe():
        logger.d('A swipe was cancelled');
        break;
      case DrivenActivity():
        logger.d('Driven Activity');
        break;
    }
  }

  void _onEnd() {
    logger.d('end reached offset: ${dashboardBloc.offset}');
    dashboardBloc.offset += dashboardBloc.limit;
    logger.d('end reached offset changed: ${dashboardBloc.offset}');
    dashboardBloc.add(const DashboardEvent.callingParkingData());
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
