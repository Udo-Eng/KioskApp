import './app_state.dart';
import './action.dart';

AppState appReducer(AppState state, action) {
  return AppState(
      isLoading: loadingReducer(state.isLoading, action),
      errorMessage: errorReducer(state.errorMessage, action),
      items: itemsReducer(state.items, action));
}

bool loadingReducer(bool state, action) {
  if (action is LoadingAction) {
    return true;
  } else if (action is LoadedAction) {
    return false;
  }
  return state;
}

String errorReducer(String state, action) {
  return state;
}

List<Item> itemsReducer(List<Item> state, action) {
  return state;
}
