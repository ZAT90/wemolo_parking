part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loadParkingData(
      {required List<GetAllParkingLot>? getParkingList}) = _LoadParkingData;
  const factory DashboardState.loadSummaryListAfterAdd(
          {required List<GetAllParkingLot>? getParkingList}) =
      _LoadSummaryListAfterAdd;
  const factory DashboardState.loadDistinctInit() = _LoadDistinctInit;
  const factory DashboardState.loadDistinctData(
      {required List<DistinctStatus> distinctStatuses,
      required List<DistinctType> distinctTypes}) = _LoadDistinctData;
}
