import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wemolo_parking/core/bloc_utils/bloc_init.dart';
import 'package:wemolo_parking/core/common/ui_items/filter_bottom_sheet.dart';
import 'package:wemolo_parking/core/constants/ui_constants.dart';
import 'package:wemolo_parking/core/utils/logger.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_distincts/response_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_parking/response_body_parking.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart';

class SummaryScreen extends StatefulWidget {
  const SummaryScreen({super.key});

  @override
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen>
    with AutomaticKeepAliveClientMixin {
  List<GetAllParkingLot> summaryList = [];
  bool isSummaryEmpty = true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocConsumer<DashboardBloc, DashboardState>(
      listenWhen: (previous, current) => current.maybeWhen(
          loadDistinctData: (_, __) => true, orElse: () => false),
      listener: (context, state) {
        logger.d('listener summary: $state');
        state.whenOrNull(
          loadDistinctData: (distinctStatuses, distinctTypes) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              _showBottomSheet(context, distinctStatuses, distinctTypes);
            });
          },
        );
      },
      buildWhen: (previous, current) => current.maybeWhen(
          loadSummaryListAfterAdd: (getParkingList) => true,
          orElse: () => false),
      builder: (context, state) {
        logger.d('state in summary: $state');
        state.whenOrNull(
          loadSummaryListAfterAdd: (getParkingList) {
            summaryList = [...?getParkingList];
            isSummaryEmpty = false;
          },
        );
        return Scaffold(
            body: SingleChildScrollView(
          child: isSummaryEmpty
              ? SizedBox(
                  height: UiConstants(context).screenHeight,
                  child: const Center(
                    child: Text('No Items found'),
                  ),
                )
              : Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        dashboardBloc
                            .add(const DashboardEvent.callingDistinctData());
                        // _showBottomSheet(context);
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.sort),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Click here to Filter the Summary',
                            style:
                                TextStyle(decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: summaryList.length,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          GetAllParkingLot parkingLot = summaryList[index];
                          return Padding(
                            padding: const EdgeInsets.all(10),
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: const BorderSide(color: Colors.black)),
                              leading: CircleAvatar(
                                backgroundImage:
                                    NetworkImage(parkingLot.image!),
                                radius: 25,
                              ),
                              title: Text(parkingLot.name!),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(parkingLot.address!),
                                  Text(parkingLot.type!),
                                  Text(
                                    parkingLot.status!,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              trailing: parkingLot.isLiked!
                                  ? const Icon(Icons.thumb_up,color: Colors.green,)
                                  : const Icon(Icons.thumb_down,color: Colors.grey,),
                            ),
                          );
                        }),
                  ],
                ),
        ));
      },
    );
  }

  void _showBottomSheet(
      BuildContext context,
      List<DistinctStatus> distinctStatusList,
      List<DistinctType> distinctTypes) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return BottomSheetContent(
          distinctStatusList: distinctStatusList,
          distinctTypeList: distinctTypes,
        );
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
