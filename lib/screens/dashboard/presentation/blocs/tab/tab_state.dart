part of 'tab_bloc.dart';

@freezed
class TabState with _$TabState {
  const factory TabState.initial() = _Initial;
  const factory TabState.loadInProgress() = _LoadInProgress;
  const factory TabState.getTabIndex(int index) = _GetTabIndex; 
}