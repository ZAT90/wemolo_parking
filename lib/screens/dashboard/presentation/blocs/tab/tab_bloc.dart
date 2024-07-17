import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tab_state.dart';
part 'tab_event.dart';
part 'tab_bloc.freezed.dart';

class TabBloc extends Bloc<TabEvent, TabState> {
  TabBloc() : super(const TabState.initial()) {
    on<TabEvent>((events, emit) async {
      await events.when(
        changingTabIndex: (index) async {
          emit(TabState.getTabIndex(index));
        },
      );
    });
  }
}
