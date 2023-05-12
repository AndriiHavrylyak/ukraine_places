part of 'bottom_sheet_bloc.dart';

class BottomSheetState {
  final bool initial;
  final BottomSheetState? currentState;

  const BottomSheetState({
    this.initial = true,
    this.currentState,
  });

  BottomSheetState copyWith({
    BottomSheetState? newState,
  }) {
    return BottomSheetState(
      currentState: newState,
      initial: false,
    );
  }

}


