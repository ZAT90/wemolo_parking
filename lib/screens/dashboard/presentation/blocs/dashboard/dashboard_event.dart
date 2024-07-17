part of 'dashboard_bloc.dart';

@freezed
class DashboardEvent with _$DashboardEvent {
  const factory DashboardEvent.callingParkingData() = _CallingParkingData;
  const factory DashboardEvent.addToSummary(
      {required GetAllParkingLot parkinglot}) = _AddToSummary;
  const factory DashboardEvent.callingDistinctData() = _CallingDistinctData;
  const factory DashboardEvent.applyFilter() = _ApplyFilter;
}
