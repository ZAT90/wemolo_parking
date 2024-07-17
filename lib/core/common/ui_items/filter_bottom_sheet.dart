import 'package:flutter/material.dart';
import 'package:wemolo_parking/core/bloc_utils/bloc_init.dart';
import 'package:wemolo_parking/core/utils/helpers.dart';
import 'package:wemolo_parking/screens/dashboard/data/model/response/response_body_distincts/response_body_distincts.dart';
import 'package:wemolo_parking/screens/dashboard/presentation/blocs/dashboard/dashboard_bloc.dart';

class BottomSheetContent extends StatefulWidget {
  final List<DistinctStatus> distinctStatusList;
  final List<DistinctType> distinctTypeList;
  const BottomSheetContent(
      {super.key,
      required this.distinctStatusList,
      required this.distinctTypeList});

  @override
  State<BottomSheetContent> createState() => _BottomSheetContentState();
}

class _BottomSheetContentState extends State<BottomSheetContent> {
  List<String> choices = dashboardBloc.choicesOfUser;
  List<String> selectedChoices = dashboardBloc.selectedChoiceOfuser;
  List<DistinctStatus> selectedStatuses =
      dashboardBloc.selectedDistinctStatuses;
  List<DistinctType> selectedTypes = dashboardBloc.selectedDistinctTypes;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Select your choice'),
            filterUserChoice(),
            const Text('Select Type'),
            filterTypes(),
            const Text('Select Status'),
            filterStatus(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    dashboardBloc.selectedChoiceOfuser = [...selectedChoices];
                    dashboardBloc.selectedDistinctStatuses = [
                      ...selectedStatuses
                    ];
                    dashboardBloc.selectedDistinctTypes = [...selectedTypes];
                    dashboardBloc.add(const DashboardEvent.applyFilter());
                    Navigator.pop(context);
                  },
                  child: const Text('Apply'),
                ),
                const SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Wrap filterTypes() {
    return Wrap(
      spacing: 5.0,
      children: widget.distinctTypeList
          .map((value) => FilterChip(
              label: Text(value.type!),
              selected: selectedTypes.contains(value),
              onSelected: (bool selected) {
                // logger.d('va')
                setState(() {
                  if (selected) {
                    selectedTypes.add(value);
                  } else {
                    selectedTypes.remove(value);
                  }
                });
              }))
          .toList(),
    );
  }

  Wrap filterUserChoice() {
    return Wrap(
      spacing: 5.0,
      children: choices
          .map((value) => FilterChip(
              label: Text(value.capitalize()),
              selected: selectedChoices.contains(value),
              onSelected: (bool selected) {
                // logger.d('va')
                setState(() {
                  if (selected) {
                    selectedChoices.add(value);
                  } else {
                    selectedChoices.remove(value);
                  }
                });
              }))
          .toList(),
    );
  }

  Wrap filterStatus() {
    return Wrap(
      spacing: 5.0,
      children: widget.distinctStatusList
          .map((value) => FilterChip(
              label: Text(value.status!),
              selected: selectedStatuses.contains(value),
              onSelected: (bool selected) {
                // logger.d('va')
                setState(() {
                  if (selected) {
                    selectedStatuses.add(value);
                  } else {
                    selectedStatuses.remove(value);
                  }
                });
              }))
          .toList(),
    );
  }
}
