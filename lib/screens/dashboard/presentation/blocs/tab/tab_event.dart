part of 'tab_bloc.dart';

@freezed
class TabEvent with _$TabEvent {
  const factory TabEvent.changingTabIndex(int index) = _ChangingTabIndex;
}