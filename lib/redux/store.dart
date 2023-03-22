import 'package:flutter_redux/flutter_redux.dart';
import 'package:kiosk_desktop_app/redux/reducer.dart';
import 'package:redux/redux.dart';
import './app_state.dart';

final store =
    Store<AppState>(appReducer, initialState: AppState.initialState());
